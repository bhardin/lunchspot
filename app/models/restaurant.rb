class Restaurant < ActiveRecord::Base
  attr_accessible :name, :address, :phone, :menu_link

  validates_presence_of :name
  validates_uniqueness_of :name
  
  geocoded_by :address
  after_validation :geocode, :if => :address_changed?
end
