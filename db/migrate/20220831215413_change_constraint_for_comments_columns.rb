class ChangeConstraintForCommentsColumns < ActiveRecord::Migration[7.0]
  def change
    change_column_null(:comments, :comments_counter, false)
    change_column_default(:comments, :comments_counter, 0)
    change_column_null(:comments, :likes_counter, false)
    change_column_default(:comments, :likes_counter, 0)
  end
end
