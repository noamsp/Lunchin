class Lunch < ActiveRecord::Base
  attr_accessible :where ,:when

  has_many  :lunchusers
  has_many  :users, :through => :lunchusers


end
