class AddIndexFromWikiPage < ActiveRecord::Migration[5.1]
  def change
    add_index :wiki_pages, :path
  end
end
