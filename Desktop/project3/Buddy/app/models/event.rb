class Event < ActiveRecord::Base
  
has_many :users, :through => :event_users
has_many :event_users

validates :event_name, presence: true
validates :date, presence: true
validates :time, presence: true
validates :address, presence: true
end
