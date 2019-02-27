class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :name, null: false
      t.string :logo_url
      t.string :location
      t.text :description
    end
    add_index :companies, :name, unique: true
  end
end
