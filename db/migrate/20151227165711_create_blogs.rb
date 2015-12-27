class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :title
      t.string :link
      t.string :contact
      t.text :notes

      t.timestamps null: false
    end
  end
end
