class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :link
      t.references :blog_id, index: true

      t.timestamps null: false
    end
    add_foreign_key :posts, :blog_ids
  end
end
