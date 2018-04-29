class BookingsController < ApplicationController


  before_action :authenticate_user!, only: [:index, :new, :edit, :show, :update, :destroy, :create]
  before_action :set_boat, only: [:show, :edit, :update, :destroy]

  #before_action :set_booking, only: [:show, :edit, :update, :destroy]
include BookingsHelper

  def new
  @booking = Booking.new
  @bookings = Booking.all
  end

  def index
    @bookings = Booking.all
  end

  def show
    @bookings = Booking.all
    @boat = Boat.all
    @job = Job.all
  end


    def create
  @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to bookings_path
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
