class RenameColumnWikiIdtoWikiSpaceIdForWikiPages < ActiveRecord::Migration[5.1]
  def change
    rename_column :wiki_pages, :wiki_id, :wiki_space_id
  end
end
