class CreateTodos < ActiveRecord::Migration[6.0]
  def change
    create_table :todos do |t|
      t.text :body
      t.boolean :complete, default: false
      t.integer :user_id

      t.timestamps
    end
  end
end
