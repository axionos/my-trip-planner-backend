class CreateTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :trips do |t|
      t.string :title
      t.date :start
      t.date :end
      t.integer :user_id
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
