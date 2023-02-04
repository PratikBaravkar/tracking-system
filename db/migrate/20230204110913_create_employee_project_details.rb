class CreateEmployeeProjectDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :employee_project_details do |t|
      t.references :employee
      t.references :project_detail

      t.timestamps
    end
  end
end
