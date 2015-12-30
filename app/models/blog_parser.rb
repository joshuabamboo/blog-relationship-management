require 'csv'

class BlogParser
  attr_reader :path

  def initialize(path)
    @path = path
  end

  def create_blogs
    CSV.foreach(path, {:headers=>:first_row}) do |row|
      new_blog = Blog.new
      new_blog.title = row[0].rstrip if row[0] != nil
      new_blog.link = row[2].rstrip if row[2] != nil
      new_blog.contact = row[4].rstrip if row[4] != nil
      new_blog.notes = row[5].rstrip if row[5] != nil
      new_blog.save
    end
  end
end
