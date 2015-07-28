class AddNameToCoffin < ActiveRecord::Migration
  def change
    add_column :coffins, :name, :string
  end
end
