class CreateSubPurchasedLogs < ActiveRecord::Migration[6.0]
  def change
    create_table :sub_purchased_logs do |t|

      t.timestamps
      t.references :item
      t.string :quantitiy, nill:false
      t.string :price, nill: false
      t.string :name, null: false
      t.string :postal_code, nill: false
      t.integer :area_id, nill: false
      t.string :city, nill: false
      t.string :address, nill:false
      t.integer :where_id
    end
  end
end
