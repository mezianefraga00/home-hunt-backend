class CreateHomes < ActiveRecord::Migration[6.1]
  def change
    create_table :homes do |t|
      t.string :home_type
      t.string :surface
      t.string :parking
      t.string :heating
      t.string :backyard
      t.string :laundry
      t.string :dishawasher
      t.string :cooling
      t.string :deal_type
      t.string :nbr_bedroom
      t.string :nbr_bathroom
      t.string :pets_allowed
      t.string :img_url
      t.text :description
      t.references :owner, foreign_key: true
      t.references :location, foreign_key: true

      t.timestamps
    end
  end
end
