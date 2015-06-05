class CreateTransport < ActiveRecord::Migration
  def change
    create_table :transports do |t|
      t.date :transport_from_date
      t.date :transport_till_date
      t.string :transport_city
      t.string :transport_to_city
      t.string :transport_type
      t.float :capacity
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
