class CreateTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :trips do |t|
      t.string :title
      t.date :startDate
      t.date :endDate
      t.string :destination
      # t.integer :user_id
      t.integer :user_id

      t.timestamps
    end
  end
end
