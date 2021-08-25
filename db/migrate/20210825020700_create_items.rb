class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|

      t.timestamps
      t.references :user, nill: false, foreign_key: true
      t.integer :price, nill: false
      t.text :explanation, nill: false
    end
  end
end
