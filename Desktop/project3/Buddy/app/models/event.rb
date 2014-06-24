class Event < ActiveRecord::Base

paginates_per 7

geocoded_by :address
after_validation :geocode
  
has_many :users, :through => :event_users
has_many :event_users

validates :event_name, presence: true, length: {minumum: 2, maximum: 25}
validates :description, presence: true, length: {minumum: 2, maximum: 200}
validates :date, presence: true, length: {minumum: 2, maximum: 15}
validates :time, presence: true, length: {minumum: 2, maximum: 15}
validates :address, presence: true, length: {minumum: 10, maximum: 50}
validates :location, length: {minumum: 2, maximum: 100}
validates :difficulty, length: {minumum: 2, maximum: 20}

end
