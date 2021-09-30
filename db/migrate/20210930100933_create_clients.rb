class CreateClients < ActiveRecord::Migration[6.1]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :phone_nbr
      t.string :login
      t.string :password_email

      t.timestamps
    end
  end
end
