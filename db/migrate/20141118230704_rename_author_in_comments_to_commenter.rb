class RenameAuthorInCommentsToCommenter < ActiveRecord::Migration
  def change
    rename_column :comments, :author_id, :commenter_id
  end
end
