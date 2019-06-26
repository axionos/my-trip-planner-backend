class CreateDays < ActiveRecord::Migration[5.2]
  def change
    create_table :days do |t|
      t.integer :trip_id
      # t.belongs_to :trip, foreign_key: true

      t.timestamps
    end
  end
end
