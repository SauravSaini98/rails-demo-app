class CreateJobDescriptions < ActiveRecord::Migration[7.0]
  def change
    create_table :job_descriptions do |t|
      t.references :job
      t.text    :description

      t.timestamps
    end
  end
end
