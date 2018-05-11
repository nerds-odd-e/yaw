class RenameTableWikisToWikiSpaces < ActiveRecord::Migration[5.1]
  def change
    rename_table :wikis, :wiki_spaces
  end
end
