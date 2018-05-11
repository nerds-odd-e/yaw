class AddTableWikiPages < ActiveRecord::Migration[5.1]
  def change
    create_table :wikis do |t|
      t.string :title
      t.timestamps
    end
  end
end
