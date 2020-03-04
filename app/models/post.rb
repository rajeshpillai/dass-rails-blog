class Post < ApplicationRecord
  belongs_to :category
  has_many :taggings
  has_many :tags, through: :taggings
  has_rich_text :body
  validates :title,  presence: true

  
end
