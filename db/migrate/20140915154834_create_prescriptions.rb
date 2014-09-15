class CreatePrescriptions < ActiveRecord::Migration
  def change
    create_table :prescriptions do |t|
      t.integer :medication_id
      t.integer :patient_id
      t.string :schedule
      t.string :dosage
      t.date :starts_on
      t.date :ends_on
    end
  end
end
