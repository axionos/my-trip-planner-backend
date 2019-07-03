class ChangeColumnToStringItems < ActiveRecord::Migration[5.2]
    def change
      change_column :items, :latitude, :string
      change_column :items, :longitude, :string
    end

end
