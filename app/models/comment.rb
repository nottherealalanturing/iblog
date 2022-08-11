class Comment < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  belongs_to :post

  private
  def update_comments_counter
    author.increment!(:posts_counter)
  end
end
