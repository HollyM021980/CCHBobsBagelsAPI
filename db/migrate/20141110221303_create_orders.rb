class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.decimal :price, precision: 8, scale:2
      t.string :street
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :phone, null: false
      t.string :access_token, :null, false
      t.string :name, null: false
      t.belongs_to :user

      t.timestamps null: false
    end
  end
end
