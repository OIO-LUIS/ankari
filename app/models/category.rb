class Category < ApplicationRecord
    has_many :actions
    has_many :products
    
end
