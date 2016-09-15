class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.text :address
      t.string :country
      t.string :state
      t.string :city
      t.string :hometown

      t.timestamps
    end
  end
end
