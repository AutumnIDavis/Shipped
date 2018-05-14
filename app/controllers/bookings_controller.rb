class BookingsController < ApplicationController


  before_action :authenticate_user!, only: [:index, :new, :edit, :show, :update, :destroy, :create]
  # before_action :set_boat, only: [:show, :edit, :update, :destroy]

  #before_action :set_booking, only: [:show, :edit, :update, :destroy]
include BookingsHelper

  def new
  @booking = Booking.new
  @bookings = Booking.all
  end

  def index
    @booking = Booking.new
    @bookings = Booking.all
  end

  def show
    @bookings = Booking.all
    @boat = Boat.all
    @job = Job.all
  end                                                         


  def create
    existing = Booking.where(booking_params).first
    if existing
      respond_to do |format|
        format.html { redirect_to bookings_url, notice: "#{existing.boat.name} has already been assigned to #{existing.job.name}"}
      end
    else
      booking = Booking.new(booking_params)
      p '***********************************'
      p booking_params
      p booking
      if booking.save
        respond_to do |format|
          format.js
          format.html { redirect_to bookings_url }
        end
      else
        redirect_to bookings_path
      end
    end
  end



def destroy
  @booking = Booking.find(params[:id])
  @booking.destroy
  respond_to do |format|
    format.html { redirect_to bookings_url, notice: 'Booking was successfully destroyed.' }
    format.json { head :no_content }
  end
end

  def booking_params
    params.require(:booking).permit( :job_id , :boat_id )
  end

end
