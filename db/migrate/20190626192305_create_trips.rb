class CreateTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :trips do |t|
      t.string :title
      t.date :start
      t.date :end
      t.string :country
      # t.integer :user_id
      t.integer :user_id

      t.timestamps
    end
  end
end
