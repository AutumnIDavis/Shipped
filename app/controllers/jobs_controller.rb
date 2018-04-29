class JobsController < ApplicationController
  before_action :set_job, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:index, :new, :edit, :show, :update, :destroy, :create, :assign]
  # GET /jobs



def new
  @job = Job.new
  @jobs = Job.new
end


def edit
  @job = Job.find(params[:id])
end

  def index
    @jobs = Job.all
  end


  def show
    @job = Job.find(params[:id])
    @jobs = Job.all
    @boats = Boat.all
  end



  def create
    user = User.find(current_user.id)
    @job = user.jobs.create(job_params)
    p '******************************'
    p @job
    p '******************************'
    respond_to do |format|
      if @job.save
        format.html { redirect_to @job, notice: 'Job was successfully created.' }
        format.json { render :show, status: :created, location: @job }
      else
        format.html { render :new }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end


  def update
    respond_to do |format|
      if @job.update(job_params)
        format.html { redirect_to @job, notice: 'Job was successfully updated.' }
        format.json { render :show, status: :ok, location: @job }
      else
        format.html { render :edit }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @job.destroy
    respond_to do |format|
      format.html { redirect_to jobs_url, notice: 'Job was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def assign
    @job = Job.find(params[:job_id])
    @boat = Boat.find(params[:boat_id])

    @job.boats << @boat
    redirect_to root_path






  end
  private
    def set_job
      @job = Job.find(params[:id])
    end

    def job_params
      params.require(:job).permit( :name, :destination, :origin, :capacity, :cost, :description )
    end
end
