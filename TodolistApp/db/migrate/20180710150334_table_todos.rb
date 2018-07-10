class TableTodos < ActiveRecord::Migration[5.0]
  def change
    create_table(:todos)
    add_column(:todos, :content, :string)
    add_column(:todos, :author, :string)
    add_column(:todos, :date, :datetime)
  end
end
