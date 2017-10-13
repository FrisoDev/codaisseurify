class CreateArtists < ActiveRecord::Migration[5.1]
  def change
    create_table :artists do |t|
      t.string :name
      t.text :country
      t.decimal :act_since
      t.string :bio
      t.string :genre
      t.decimal :born

      t.timestamps
    end
  end
end
