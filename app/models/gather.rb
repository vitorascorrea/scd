class Gather < ActiveRecord::Base
  belongs_to :agency
  belongs_to :cemetery
  belongs_to :coffin
  belongs_to :funeral
  belongs_to :placeofdeath 
  
  validates :ncf, presence: true
  validates :agency_id, presence: true
  validates :deceased, presence: true
  validates :cemetery_id, presence: true
  validates :coffin_id, presence: true
  validates :funeral_id, presence: true
  validates :placeofdeath_id, presence: true
  validates :healthcare, presence: true
  
end
