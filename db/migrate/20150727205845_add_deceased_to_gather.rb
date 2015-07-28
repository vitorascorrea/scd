class AddDeceasedToGather < ActiveRecord::Migration
  def change
    add_column :gathers, :deceased, :string
  end
end
