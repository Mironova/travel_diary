class AddAsBlockColumnToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :as_block, :boolean
  end
end
