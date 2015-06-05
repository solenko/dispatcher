class CreateCargos < ActiveRecord::Migration
  def change
    create_table :cargos do |t|
      t.date :ship_from_date
      t.date :ship_till_date
      t.string :ship_city
      t.string :ship_to_city
      t.text :description
      t.string :transport_type
      t.float :weight
      t.float :volume
      t.string :payment_type
      t.integer :payment_amount
      t.string :name
      t.integer :phone
      t.string :email
      t.string :company_name
      t.string :company_type
      t.boolean :order_status
      t.timestamps
    end
  end
end
