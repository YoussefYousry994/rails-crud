class Comment < ApplicationRecord
  belongs_to :post
  # validates :name, presence: true
  # validates :content, presence: true
  # validates :post, presence: true
  # validates :post_id, presence: true
end
