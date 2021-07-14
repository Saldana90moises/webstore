class Product < ApplicationRecord
    belongs_to :category #campo adicional

    has_many :has_stores
    has_many :stores , through: :has_stores

    attr_accessor :store_elements

    def save_stores
        return has_stores.destroy_all if store_elements.nil? || store_elements.empty?

        has_stores.where.not(store_id: store_elements).destroy_all

        store_elements.each do |store_id|
            HasStore.find_or_create_by(product: self, store_id: store_id )
        end
    end

end
