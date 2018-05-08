class AddForeignKeys < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :regions, :places
    add_foreign_key :factions, :places
    add_foreign_key :characters, :places
    add_foreign_key :characters, :factions
    add_foreign_key :party_members, :places
  end
end
