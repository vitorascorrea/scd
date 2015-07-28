class AddNameToCemetery < ActiveRecord::Migration
  def change
    add_column :cemeteries, :name, :string
  end
end
