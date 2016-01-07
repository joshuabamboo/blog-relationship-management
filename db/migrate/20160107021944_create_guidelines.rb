class CreateGuidelines < ActiveRecord::Migration
  def change
    create_table :guidelines do |t|
      t.references :blog, index: true
      t.references :requirement, index: true

      t.timestamps null: false
    end
    add_foreign_key :guidelines, :blogs
    add_foreign_key :guidelines, :requirements
  end
end
