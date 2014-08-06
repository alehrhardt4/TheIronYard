class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
    	t.string :first_name
    	# t.text :first_name
    	t.string :last_name
    	# t.text :last_name
    	t.date :dob
    	# t.text :DOB
    	t.string :gender
    	# t.text :gender
    	# t.string :description
    	t.text :description
      t.timestamps
    end
  end
end
