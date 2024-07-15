class CreateEvents < ActiveRecord::Migration[7.1]
  def change
    create_table :events do |t|
      t.text :description
      t.string :name
      t.string :address
      t.date :date
      t.time :time
      t.string :category
      t.string :age_group
      t.decimal :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
