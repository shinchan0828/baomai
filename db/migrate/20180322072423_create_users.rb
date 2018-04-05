class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :profile
      t.boolean :admin_flag
      t.boolean :buyer_flag
      t.boolean :seller_flag
      
      t.timestamps
    end
  end
end
