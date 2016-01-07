class Guideline < ActiveRecord::Base
  belongs_to :blog
  belongs_to :requirement
end
