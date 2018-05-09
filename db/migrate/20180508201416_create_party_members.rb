class CreatePartyMembers < ActiveRecord::Migration[5.1]
  def change
    create_table :party_members do |t|
      t.string :name
      t.string :player
      t.string :race
      t.string :subrace
      t.string :rpg_class
      t.string :subclass
      t.string :background
      t.text :description
      t.text :backstory
      t.string :image
      t.references :place

      t.timestamps
    end
  end
end
