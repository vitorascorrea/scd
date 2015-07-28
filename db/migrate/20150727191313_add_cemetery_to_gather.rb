class AddCemeteryToGather < ActiveRecord::Migration
  def change
    add_reference :gathers, :cemetery, index: true, foreign_key: true
  end
end
