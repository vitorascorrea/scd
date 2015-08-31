class AddOutsideToGather < ActiveRecord::Migration
  def change
    add_column :gathers, :outside, :string
  end
end
