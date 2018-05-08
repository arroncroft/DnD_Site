class CreatePartyMembers < ActiveRecord::Migration[5.1]
  def change
    create_table :party_members do |t|
      t.string :name
      t.string :player
      t.string :race
      t.string :rpg_class
      t.string :image
      t.text :description
      t.text :backstory
      t.references :place

      t.timestamps
    end
  end
end
