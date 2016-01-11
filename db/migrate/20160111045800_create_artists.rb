class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name
      t.string :twitter
      t.string :instagram
      t.string :soundcloud
      t.string :epk
      t.string :website

      t.timestamps null: false
    end
  end
end
