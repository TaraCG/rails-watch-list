class RemoveColumnsFromBookmarks < ActiveRecord::Migration[7.0]
  def change
    remove_column :bookmarks, :movies_id, :bigint
    remove_column :bookmarks, :lists_id, :bigint
  end
end
