class CreateSongs < ActiveRecord::Migration[5.1]
  def change
    create_table :songs do |t|
      t.string :name
      t.integer :length_min
      t.integer :length_sec

      t.timestamps
    end
  end
end
