class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :ensure_current_user

  def ensure_current_user
    redirect_to signin_path unless current_user
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def all_meds
    @medications = Medication.all
  end

  def find_patient(id)
    @patient = Patient.find(id)
  end

  helper_method :current_user

end
