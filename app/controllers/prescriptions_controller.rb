class PrescriptionsController < ApplicationController
  def new
    @prescription = Prescription.new
  end

end
