class CreateJobsKeywords < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs_keywords do |t|
      t.integer :job_id, null: false
      t.integer :keyword_id, null: false
    end
    add_index :jobs_keywords, [:job_id, :keyword_id], unique: true
    add_index :jobs_keywords, :job_id
    add_index :jobs_keywords, :keyword_id
  end
end
