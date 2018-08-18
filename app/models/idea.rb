class Idea < ApplicationRecord
  mount_uploader :picture, PictureUploader
  
  # Each idea we add via our browser page must have a name. 
  # Otherwise it is not considered to be a valid record and will not save to the database.
  validates :name, presence: true
end
