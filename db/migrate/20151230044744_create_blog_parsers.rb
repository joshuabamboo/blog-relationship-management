class CreateBlogParsers < ActiveRecord::Migration
  def change
    create_table :blog_parsers do |t|

      t.timestamps null: false
    end
  end
end
