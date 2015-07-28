class CreateFunerals < ActiveRecord::Migration
  def change
    create_table :funerals do |t|

      t.timestamps null: false
    end
  end
end
