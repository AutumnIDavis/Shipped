class BoatsController < ApplicationController
  before_action :authenticate_user!, only: [:index, :new, :edit, :show, :update, :destroy, :create]
  before_action :set_boat, only: [:show, :edit, :update, :destroy]


  def index
    @boats = Boat.all
  end

  def show
  @boat = Boat.find(params[:id])
  @job = Job.first
  end

  # GET /boats/new
  def new
    @boat = Boat.new
    @boats = Boat.new
  end

  # GET /boats/1/edit
  def edit
    @boat = Boat.find(params[:id])
  end



  def create
   p 'boat_params'
   p boat_params
       @boat = current_user.boats.new(boat_params)
       @user = User.find_by_id(current_user.id)
       p @boat
       @boat.user = @user
         @boat.save
             redirect_to boats_path
     end


  # PATCH/PUT /boats/1
  # PATCH/PUT /boats/1.json
  def update
  	@boat = Boat.find(params[:id])
  	@boat.update({
  		name: params[:boat][:name],
  		location: params[:boat][:location],
  		capacity: params[:boat][:capacity]

  	})
  	if (@boat)
  		redirect_to url_for(:controller => :boats, :action => :index)
  	else
  		redirect_to url_for(:controller => :boats, :action => :edit)
  	end
  end

  # DELETE /boats/1
  # DELETE /boats/1.json

def destroy
    # to do: be able to delete a boat from all boats collection
    @boat = Boat.find(params[:id])
    @boat.destroy
    if @boat
      redirect_to url_for(:controller => :boats, :action => :index)
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_boat
      @boat = Boat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def boat_params
      params.require(:boat).permit(:name, :image, :capacity, :location)
    end
end
