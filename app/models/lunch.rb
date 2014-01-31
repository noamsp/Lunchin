class Lunch < ActiveRecord::Base
  attr_accessible :where ,:when

  has_and_belongs_to_many :users

end
