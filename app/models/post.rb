class Post < ApplicationRecord

  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  has_many :comments
  has_many :likes

  after_save :update_posts_counter

  def update_posts_counter
    author.update(posts_counter: author.posts.count)
  end

  def last_five_comments
    comments.order(created_at: :DESC).limit(5)
  end
end
