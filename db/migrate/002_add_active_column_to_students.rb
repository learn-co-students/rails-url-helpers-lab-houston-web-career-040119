class AddActiveColumnToStudents < ActiveRecord::Migration
  def change #adds new column to students table, called active, type boolean with default value of false
    add_column :students, :active, :boolean, default: false
#has an active attribute that defaults to false
  end
end
