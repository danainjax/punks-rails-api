class Punk < ApplicationRecord


    def self.get_punks
        params = { :limit => 10}
       
        response = RestClient.get("https://cryptopunks.herokuapp.com/api/punks", params)
    #    byebug
        punks = JSON.parse(response)
        # puts punks
        
         #create a Ruby punk object with all the info in the punks array
        punks.each do |punk|
            self.create(punktype: punk["type"], image: punk["image"], accessories: punk["accessories"]) 
        
        end
    end
end
