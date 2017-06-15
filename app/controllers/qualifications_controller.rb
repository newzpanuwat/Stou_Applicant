class QualificationsController < ApplicationController
    before_action :set_qualifications, only: [:show]

  def index
    @qualifications = Qualification.all
  end

  def show
  end

  def new
    @qualification = Qualification.new
  end
  
  def create
    @qualification = Qualification.new(set_params)
      if @qualification.save!
        flash[:notice] = "Successfully created qualification!"
        redirect_to @qualification
      else
        flash[:alert] = "Error for created qualification"
        render :new
      end
  end


private

  def set_qualifications
      @qualification = Qulification.find(params[:id])
  end

  def set_params
      params.require(:qualification).permit(:qual_code, :qual_desc)
  end

end
