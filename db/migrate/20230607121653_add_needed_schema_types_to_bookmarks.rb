class AddNeededSchemaTypesToBookmarks < ActiveRecord::Migration[7.0]
  def change
    add_column :bookmarks, :comment, :string
    add_reference :bookmarks, :movies, null: false, foreign_key: true
    add_reference :bookmarks, :lists, null: false, foreign_key: true
  end
end
