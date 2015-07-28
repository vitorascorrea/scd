class Gather < ActiveRecord::Base
  has_one :agency
  has_one :cemetery
  has_one :coffin
  has_one :funeral
  has_one :placeofdeath 
  
  validates :ncf, presence: true
  validates :agency_id, presence: true
  validates :deceased, presence: true
  validates :cemetery_id, presence: true
  validates :coffin_id, presence: true
  validates :funeral_id, presence: true
  validates :placeofdeath_id, presence: true
  validates :healthcare, presence: true
  
end
