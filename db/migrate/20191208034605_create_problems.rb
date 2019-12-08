class CreateProblems < ActiveRecord::Migration[6.0]
  def change
    create_table :problems do |t|
      t.text :content
      t.references :user, foreign_key: true

      t.timestamps
    end
    add_index :problems, [:user_id, :created_at]
  end
end
