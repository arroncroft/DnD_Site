class AddForeignKeys < ActiveRecord::Migration[5.1]
  def change
    add_reference :regions, :places, index: true
    add_foreign_key :regions, :places
    add_reference :factions, :places, index: true
    add_foreign_key :factions, :places
    add_reference :characters, :places, index: true
    add_foreign_key :characters, :places
    add_reference :characters, :factions, index: true
    add_foreign_key :characters, :factions
    add_reference :party_members, :places, index: true
    add_foreign_key :party_members, :places
  end
end
