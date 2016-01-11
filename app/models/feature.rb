class Feature < ActiveRecord::Base
  belongs_to :post_id
  belongs_to :artist_id
end
