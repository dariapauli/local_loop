class ChangeAgeRangeForEvents < ActiveRecord::Migration[7.1]
  def change
    change_column :events, :age_group, :integer, using: "age_group::integer"
    change_column_default :events, :age_group, 0
  end
end
