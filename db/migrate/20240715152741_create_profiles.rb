class CreateProfiles < ActiveRecord::Migration[7.1]
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.date :birthdate
      t.string :gender
      t.text :bio
      t.text :interests
      t.integer :postcode
      t.string :city
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
