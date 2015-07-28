class CreatePlaceofdeaths < ActiveRecord::Migration
  def change
    create_table :placeofdeaths do |t|

      t.timestamps null: false
    end
  end
end
