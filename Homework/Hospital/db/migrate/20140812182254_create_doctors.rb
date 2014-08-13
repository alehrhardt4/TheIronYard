class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
    	t.string :name
    	t.text :doctorable_type
    	t.integer :doctorable_id
      t.timestamps
    end
  end
end
