class CreateCemeteries < ActiveRecord::Migration
  def change
    create_table :cemeteries do |t|

      t.timestamps null: false
    end
  end
end
