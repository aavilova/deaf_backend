class Taggable < ApplicationRecord

  belongs_to :post
  belongs_to :tag
  belongs_to :card
end
