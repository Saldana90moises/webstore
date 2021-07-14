class Store < ApplicationRecord
    has_many :has_stores
    has_many :products , through: :has_stores
end
