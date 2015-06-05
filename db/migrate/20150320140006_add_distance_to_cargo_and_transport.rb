class AddDistanceToCargoAndTransport < ActiveRecord::Migration
  def up
    add_column :cargos, :distance, :float
    add_column :transports, :distance, :float
  end

  def down
    remove_column :cargos, :distance
    remove_column :transports, :distance
  end
end
