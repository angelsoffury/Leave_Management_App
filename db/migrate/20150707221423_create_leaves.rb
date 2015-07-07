class CreateLeaves < ActiveRecord::Migration
  def change
    create_table :leaves do |t|
      t.date :start_date
      t.date :end_date
      t.text :reason
      t.integer :user_id
      t.integer :approver_id
      t.timestamps
    end
    add_column :leaves, :status, :string, default: "Pending"
    add_index :leaves, [:user_id, :created_at]
  end
end
