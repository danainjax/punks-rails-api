class Punk < ApplicationRecord
    has_many :comments
    has_many :likes
    belongs_to :user

    def self.get_punks
        response = RestClient.get("https://cryptopunks.herokuapp.com/api/punks")
    #    byebug
        punks = JSON.parse(response)
        user = User.create(username: "Larva Labs")
         #create a Ruby punk object with all the info in the punks array
        punks.each do |punk|
            self.create(punktype: punk["type"], image: punk["image"], accessories: punk["accessories"], user: user) 
        
        end
    end
end
