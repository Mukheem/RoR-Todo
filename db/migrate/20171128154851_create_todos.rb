class CreateTodos < ActiveRecord::Migration[5.1]
  def change
    create_table :todos do |t|
    	t.text :name
    	t.string :description
    end
  end
end
