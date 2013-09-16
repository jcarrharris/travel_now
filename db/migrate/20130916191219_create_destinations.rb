class CreateDestinations < ActiveRecord::Migration
  def change
    create_table :destinations do |t|
      t.string :name
      t.string :country
      t.string :continent
      t.integer :rating
      t.integer :cost
      t.string :category
      t.text :description

      t.timestamps
    end
  end
end
