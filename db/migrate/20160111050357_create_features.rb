class CreateFeatures < ActiveRecord::Migration
  def change
    create_table :features do |t|
      t.references :post_id, index: true
      t.references :artist_id, index: true

      t.timestamps null: false
    end
    add_foreign_key :features, :post_ids
    add_foreign_key :features, :artist_ids
  end
end
