class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :body
      t.string :text
      t.string :summary
      t.string :published
      t.string :boolean

      t.timestamps
    end
  end
end
