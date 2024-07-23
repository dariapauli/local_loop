class RemoveColumnFromProfiles < ActiveRecord::Migration[7.1]
  def change
    remove_column :profiles, :first_name
  end
end
