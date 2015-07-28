class AddNameToPlaceofdeath < ActiveRecord::Migration
  def change
    add_column :placeofdeaths, :name, :string
  end
end
