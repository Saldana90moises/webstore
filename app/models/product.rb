class Product < ApplicationRecord
    belongs_to :category #campo adicional

    has_many :has_stores
    has_many :stores , through: :has_stores

    attr_accessor :store_elements

    def save_stores
        
        store_elements.each do |store_id|
            
            HasStore.find_or_create_by(product: self, store_id: store_id )
            
        end
    end

end
