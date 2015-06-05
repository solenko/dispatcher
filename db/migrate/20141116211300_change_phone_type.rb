class ChangePhoneType < ActiveRecord::Migration
  def up
    change_column :cargos, :phone, :string
    change_column :transports, :phone, :string
  end

  def down
    change_column :cargos, :phone, :integer
    change_column :transports, :phone, :integer
  end
end
