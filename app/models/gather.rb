class Gather < ActiveRecord::Base
  belongs_to :agency
  belongs_to :cemetery
  belongs_to :coffin
  belongs_to :funeral
  belongs_to :placeofdeath 
  
  validates :ncf, presence: true, length: { is: 7 }
  validates :agency_id, presence: true
  validates :deceased, presence: true
  validates :outside, presence: true
end
