class CreateRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :requests do |t|
      t.integer :user_id
      t.string :title
      t.integer :budget
      t.text :description

      t.timestamps
    end
  end
end
