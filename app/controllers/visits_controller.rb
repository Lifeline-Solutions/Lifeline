class VisitsController < ApplicationController
  before_action :set_patient
  before_action :set_visit, only: [:show, :edit, :update, :destroy]

  # GET patients/1/visits
  def index
    @visits = @patient.visits
  end

  # GET patients/1/visits/1
  def show
  end

  # GET patients/1/visits/new
  def new
    @visit = @patient.visits.build
  end

  # GET patients/1/visits/1/edit
  def edit
  end

  # POST patients/1/visits
  def create
    @visit = @patient.visits.build(visit_params)

    if @visit.save
      redirect_to([@visit.patient, @visit], notice: 'Visit was successfully created.')
    else
      render action: 'new'
    end
  end

  # PUT patients/1/visits/1
  def update
    if @visit.update_attributes(visit_params)
      redirect_to([@visit.patient, @visit], notice: 'Visit was successfully updated.')
    else
      render action: 'edit'
    end
  end

  # DELETE patients/1/visits/1
  def destroy
    @visit.destroy

    redirect_to patient_visits_url(@patient)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patient
      @patient = Patient.find(params[:patient_id])
    end

    def set_visit
      @visit = @patient.visits.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def visit_params
      params.require(:visit).permit(:doctor_comments, :patient_id)
    end
end
