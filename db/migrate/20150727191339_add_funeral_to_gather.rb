class AddFuneralToGather < ActiveRecord::Migration
  def change
    add_reference :gathers, :funeral, index: true, foreign_key: true
  end
end
