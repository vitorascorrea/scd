class AddNamehcToGather < ActiveRecord::Migration
  def change
    add_column :gathers, :namehc, :string
  end
end
