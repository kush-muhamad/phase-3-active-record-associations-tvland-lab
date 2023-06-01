class Show < ActiveRecord::Base
    belongs_to :network
    has_many :characters
    has_many :actors, through: :characters
  
    def characters_list
      characters.map(&:name)
    end
  
    def network
        Network.find(network_id)
      
    end
  
    def actors_list
      actors.map(&:full_name)
    end
  end
  