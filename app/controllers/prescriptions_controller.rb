class PrescriptionsController < ApplicationController
  def new
    @prescription = Prescription.new
  end

  def create
    @prescription = Prescription.new(allowed_params)
  end





private

  def allowed_params
    params.require(:prescriptions).permit(:schedule, :dosage, :starts_on, :ends_on, :medication_id)

  end


end
