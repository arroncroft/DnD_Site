class CreateCharacters < ActiveRecord::Migration[5.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :image
      t.string :race
      t.text :description
      t.references :place
      t.references :faction

      t.timestamps
    end
  end
end
