class ApplicantsController < ApplicationController
    before_action :set_applicants, only: [:show, :update]

  def index
    @applicants = Applicant.all
  end

  def show
  end

  def new
    @applicant = Applicant.new
  end

  def create
    @applicant = Applicant.new(applicant_params)
      if @applicant.save
        redirect_to @applicant
      else
        render :new
      end
  end

  def update
  end

  private

    def set_applicants
      @applicant = Applicant.find(params[:id])
    end

    def applicant_params
      params.require(:applicant).permit(:ap_code, :ap_name, :ap_addr, :ap_sex, :ap_ed, :ap_maj)
    end
end
