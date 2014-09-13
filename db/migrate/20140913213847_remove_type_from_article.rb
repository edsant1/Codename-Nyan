class RemoveTypeFromArticle < ActiveRecord::Migration
  def change
  	remove_column :articles, :type
  end
end
