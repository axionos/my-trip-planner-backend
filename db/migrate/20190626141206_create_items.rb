class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :place
      t.string :memo
      t.integer :day_id
      t.belongs_to :day, foreign_key: true

      t.timestamps
    end
  end
end
