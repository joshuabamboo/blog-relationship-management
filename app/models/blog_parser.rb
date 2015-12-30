class BlogParser < ActiveRecord::Base
  attr_reader :path

  def initialize(path)
    @path = path
  end

  def create_blogs
    CSV.foreach(path) do |row|
      binding.pry
      # use row here...
    end
  end
end
