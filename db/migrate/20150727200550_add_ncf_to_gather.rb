class AddNcfToGather < ActiveRecord::Migration
  def change
    add_column :gathers, :ncf, :string
  end
end
