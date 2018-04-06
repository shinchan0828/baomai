class CreateCommodities < ActiveRecord::Migration[5.1]
  def change
    create_table :commodities do |t|
      t.integer :request_id
      t.string :product_name
      t.integer :amount
      t.string :product_image

      t.timestamps
    end
  end
end
