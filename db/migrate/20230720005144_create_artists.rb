class CreateArtists < ActiveRecord::Migration[7.1]
  def change
    create_table :artists do |t|
      t.string :name, null: false, index: {unique: true}
      t.text :bio

      t.integer :albums_count, null: false, default: 0
      t.integer :tracks_count, null: false, default: 0
      t.integer :listenings_count, null: false, default: 0

      t.timestamps
    end
  end
end
