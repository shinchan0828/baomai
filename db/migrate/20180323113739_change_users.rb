class ChangeUsers < ActiveRecord::Migration[5.1]
  def change
    change_column :users, :admin_flag, :boolean, default: false
    change_column :users, :seller_flag, :boolean, default: false
    change_column :users, :buyer_flag, :boolean, default: false
  end
end
