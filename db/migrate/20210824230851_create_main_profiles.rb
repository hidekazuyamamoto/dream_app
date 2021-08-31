class CreateMainProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :main_profiles do |t|

      t.timestamps
      t.references :user, nill: false, foreign_key: true
      t.string :mission, nill: false
      t.text :mission_ex
      t.string :URL_twitter
      t.string :URL_facebook
      t.string :URL_instagram
      t.string :user_name, nill: false
      t.text :user_profile
      t.datetime :dead_line, nill: false
    end
  end
end
