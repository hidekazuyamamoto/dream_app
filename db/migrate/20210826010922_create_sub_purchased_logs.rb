class CreateSubPurchasedLogs < ActiveRecord::Migration[6.0]
  def change
    create_table :sub_purchased_logs do |t|

      t.timestamps
    end
  end
end
