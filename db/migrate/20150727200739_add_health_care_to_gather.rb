class AddHealthCareToGather < ActiveRecord::Migration
  def change
    add_column :gathers, :healthcare, :string
  end
end
