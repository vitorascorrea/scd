class AddCoffinToGather < ActiveRecord::Migration
  def change
    add_reference :gathers, :coffin, index: true, foreign_key: true
  end
end
