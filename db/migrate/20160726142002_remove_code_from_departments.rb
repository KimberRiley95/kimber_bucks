class RemoveCodeFromDepartments < ActiveRecord::Migration
  def change
    remove_column :departments, :code, :string
  end
end
