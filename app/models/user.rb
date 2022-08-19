class User < ApplicationRecord

  has_many :comments, foreign_key: :author_id
  has_many :posts, foreign_key: :author_id
  has_many :likes, foreign_key: :author_id

  def last_three_posts
    Post.last(3)
  end
end
