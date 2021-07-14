class CreateStores < ActiveRecord::Migration[6.1]
  def change
    create_table :stores do |t|
      t.string :name
      t.string :street
      t.integer :number
      t.string :zipcode
      t.string :city
      t.string :country

      t.timestamps
    end
  end
end
