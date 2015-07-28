class AddNameToFuneral < ActiveRecord::Migration
  def change
    add_column :funerals, :name, :string
  end
end
