class CreateSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :skills do |t|
      t.string :skill, null: false
    end
    add_index :skills, :skill, unique: true 
  end
end
