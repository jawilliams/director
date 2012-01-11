class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.integer :phone
      t.string :notes
      t.boolean :cut
      t.boolean :color
      t.timestamps
    end
  end
end
