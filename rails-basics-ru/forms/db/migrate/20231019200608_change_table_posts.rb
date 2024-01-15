class ChangeTablePosts < ActiveRecord::Migration[7.0]
  def change
    change_column :posts, :published, :boolean
    change_column :posts, :body, :text
  end
end
