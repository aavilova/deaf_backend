class Card < ApplicationRecord
  has_many :taggables, dependent: :destroy
  has_many :tags, through: :taggables

  has_many :cardstoposts, dependent: :destroy
  has_many :posts, through: :cardstoposts
end
