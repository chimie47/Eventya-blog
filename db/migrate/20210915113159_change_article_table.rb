class ChangeArticleTable < ActiveRecord::Migration[6.1]
  def change
    remove_column(:articles, :created, if_exists: true)
    remove_column(:articles, :updated, if_exists: true)
  end
end
