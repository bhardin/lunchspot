class RenameRecommendableTables < ActiveRecord::Migration
  def up
    rename_table :likes,         :recommendable_likes
    rename_table :dislikes,      :recommendable_dislikes
    rename_table :ignores,       :recommendable_ignores
    rename_table :stashed_items, :recommendable_stashed_items
  end

  def down
    rename_table :recommendable_likes,         :likes
    rename_table :recommendable_dislikes,      :dislikes
    rename_table :recommendable_ignores,       :ignores
    rename_table :recommendable_stashed_items, :stashed_items
  end
end