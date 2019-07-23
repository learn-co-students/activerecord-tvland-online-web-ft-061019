require 'pry'
class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :network

    def actors_list
        self.actors.map do |l|
            "#{l.first_name} #{l.last_name}"
        end
    end
end