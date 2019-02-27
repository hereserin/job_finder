class CreateExperienceLevels < ActiveRecord::Migration[5.2]
  def change
    create_table :experience_levels do |t|
      t.string :experience_level, null: false
    end
    add_index :experience_levels, :experience_level, unique: true 
  end
end
