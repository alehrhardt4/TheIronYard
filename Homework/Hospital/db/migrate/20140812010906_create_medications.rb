class CreateMedications < ActiveRecord::Migration
  def change
    create_table :medications do |t|
    	t.string :name
    	t.text :description
    	t.integar :patient_id
      t.timestamps
    end
  end
end
