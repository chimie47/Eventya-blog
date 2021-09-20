class CreateArticlesblogs < ActiveRecord::Migration[6.1]
  def change
    create_table :articlesblogs do |t|
      t.string :title
      t.string :description
      t.string :category

      t.timestamps
    end
  end
end
