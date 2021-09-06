class Punk < ApplicationRecord


    def self.get_punks
        response = RestClient.get("https://cryptopunks.herokuapp.com/api/punks")
    #    byebug
        punks = JSON.parse(response)
         #create a Ruby punk object with all the info in the punks array
        punks.each do |punk|
            self.create(punktype: punk["type"], image: punk["image"], accessories: punk["accessories"]) 
        
        end
    end
end
