require "pry"
class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

def shows_characters
self.characters
end

def shows_network
self.network
end

def actors_list
self.actors.map do |actor|
    binding.pry
actor.full_name
end
end

end