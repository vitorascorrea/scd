class CreateCoffins < ActiveRecord::Migration
  def change
    create_table :coffins do |t|

      t.timestamps null: false
    end
  end
end
