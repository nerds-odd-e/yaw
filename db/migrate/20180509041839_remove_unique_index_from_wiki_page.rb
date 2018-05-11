class RemoveUniqueIndexFromWikiPage < ActiveRecord::Migration[5.1]
  def change
    remove_index :wiki_pages, column: :path
  end
end
