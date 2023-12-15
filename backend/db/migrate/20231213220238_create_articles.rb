class CreateArticles < ActiveRecord::Migration[7.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :body
      t.string :thumbnail
      t.string :header

      t.timestamps
    end
  end
end
