class ChangeConstraintForPostsCounters < ActiveRecord::Migration[7.0]
  def change
      change_column_null(:users, :posts_counter, false)
      change_column_default(:users, :posts_counter, 0)
    end
end
