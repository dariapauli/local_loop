class RemoveFirstNameFromProfiles < ActiveRecord::Migration[7.1]
  def change
    remove_column :profiles, :first_name, :string
    add_column :users, :first_name, :string
  end
end
