class CreateJobsSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs_skills do |t|
      t.integer :job_id, null: false
      t.integer :skill_id, null: false
    end
    add_index :jobs_skills, [:job_id, :skill_id], unique: true
    add_index :jobs_skills, :job_id
    add_index :jobs_skills,  :skill_id
  end
end
