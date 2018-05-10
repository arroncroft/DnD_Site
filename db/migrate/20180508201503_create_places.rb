class CreatePlaces < ActiveRecord::Migration[5.1]
  def change
    create_table :places do |t|
      t.string :name
      t.string :image
      t.text :description

      t.belongs_to :region

      t.timestamps
    end
  end
end
