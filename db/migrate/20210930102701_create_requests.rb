class CreateRequests < ActiveRecord::Migration[6.1]
  def change
    create_table :requests do |t|
      t.string :date_request
      t.string :price_agree
      t.text :message
      t.references :client, foreign_key: true
      t.references :home, foreign_key: true

      t.timestamps
    end
  end
end
