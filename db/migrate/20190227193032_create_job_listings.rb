class CreateJobListings < ActiveRecord::Migration[5.2]
  def change
    create_table :job_listings do |t|
      t.integer :company_id, null: false
      t.string :title, null: false
      t.string :location, null: false
      t.text :description, null: false
      t.string :application_url, null: false
      t.integer :region_id, null: false
      t.integer :experience_level_id, null: false
      t.timestamps 
    end
    add_index :job_listings, :company_id
    add_index :job_listings, :title
    add_index :job_listings, :region_id
    add_index :job_listings, :experience_level_id
  end
end
