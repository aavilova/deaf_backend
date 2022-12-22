class Post < ApplicationRecord
  has_many :taggables, dependent: :destroy
  has_many :tags, through: :taggables

  has_many :cardstoposts, dependent: :destroy
  has_many :cards, through: :cardstoposts

  mount_uploader :image, ImageUploader
end
