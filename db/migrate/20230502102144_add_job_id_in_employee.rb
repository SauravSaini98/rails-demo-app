class AddJobIdInEmployee < ActiveRecord::Migration[7.0]
  def change
    # add_column :employees, :job_id, :bigint
    add_reference :employees, :job, index: true
  end
end
