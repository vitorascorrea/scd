class AddPlaceofdeathToGather < ActiveRecord::Migration
  def change
    add_reference :gathers, :placeofdeath, index: true, foreign_key: true
  end
end
