class Image < ActiveRecord::Base
  attachment :photo
  belongs_to :user
end
