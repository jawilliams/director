class AddValueToClient < ActiveRecord::Migration
  def change
    add_column :clients, :cut, :boolean
    add_column :clients, :color, :boolean
  end
end
