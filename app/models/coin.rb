class Coin < ApplicationRecord
    #referencia opcional, utilizar: belongs_to :mining_type, optional: true 
    belongs_to :mining_type
end
