class Article < ApplicationRecord
  belongs_to :category
  belongs_to :user

  validates :name, :category, :user, presence: true
end
