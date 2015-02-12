class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string    :title
      t.text      :body

      # seo fields
      t.string    :meta_title
      t.string    :meta_description
      t.string    :meta_keywords
      
      t.timestamps null: false
    end

    add_attachment :posts, :image
  end
end
