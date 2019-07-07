class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :place
      # t.string :memo
      t.integer :day_id
      t.decimal :latitude
      t.decimal :longitude
      t.boolean :open_now
      t.decimal :rating
      t.string :photo
      t.string :address
      # t.belongs_to :day, foreign_key: true

      t.timestamps
    end
  end
end
