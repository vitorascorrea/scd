class AddAgencyToGather < ActiveRecord::Migration
  def change
    add_reference :gathers, :agency, index: true, foreign_key: true
  end
end
