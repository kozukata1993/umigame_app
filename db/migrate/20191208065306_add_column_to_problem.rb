class AddColumnToProblem < ActiveRecord::Migration[6.0]
  def change
    add_column :problems, :title, :string
  end
end
