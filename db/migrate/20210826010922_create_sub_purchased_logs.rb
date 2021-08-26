class CreateSubPurchasedLogs < ActiveRecord::Migration[6.0]
  def change
    create_table :sub_purchased_logs do |t|

      t.timestamps
      t.references :item
      t.string :quantitiy
      t.string :price
      t.string :name, null: false
      t.string :postal_code
      t.integer :area_id, nill: false
      t.string :city, nill: false
      t.string :address, nill:false
      t.integer :where_id
    end
  end
end
