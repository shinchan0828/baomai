class ChangeNotNulToUser < ActiveRecord::Migration[5.1]
  def up
    change_column_null :users, :seller_flag, true
    change_column_null :users, :buyer_flag, true
  end
  
  def down
    change_column_null :users, :seller_flag, false
    change_column_null :users, :buyer_flag, false
  end
end
