require 'rails_helper'
require 'capybara/rails'

feature "Patients" do

  scenario "User sees all patients" do
    user = create_user
    patient = create_patient
    login(user)

    expect(page).to have_content(patient.first_name, patient.last_name)
  end

  scenario 'users can visit the index page, click on a patient and see their prescriptions' do
    user = create_user
    patient = create_patient
    login(user)

    click_on (patient.first_name + " " + patient.last_name)
    expect(page).to have_content "Some Patient"
    expect(page).to have_content "Some Patient Patient Prescriptions"
  end

  scenario "patients can add prescriptions" do
    user = create_user
    patient = create_patient
    login(user)
    click_on (patient.first_name + " " + patient.last_name)
    medication = create_medication

    click_on ("Add Prescription")

    expect(page).to have_button "Submit"

  end

end