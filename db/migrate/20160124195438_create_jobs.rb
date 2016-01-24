class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :job_title
      t.string :city
      t.string :post_code
      t.integer :salary
      t.references :job_type
      t.string :company
      t.text :description
      t.date :closing_date
      t.string :job_reference
      t.references :job_status

      t.timestamps null: false
    end
    add_index :jobs, :job_reference, unique: true
  end
end
