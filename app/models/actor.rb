class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

def list_of_characters
    self.characters
end

def list_of_shows_by_character
self.shows
end

def full_name
"#{first_name} #{last_name}"
end

def list_roles
self.characters.map do |character|
    "#{character.name} - #{character.show.name}"
end
end

end