class ChangeLatitudeToBeIntegerInItems < ActiveRecord::Migration[5.2]
  def change
    change_column :items, :latitude, :integer
  end
end
