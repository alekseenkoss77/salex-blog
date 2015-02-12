class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string      :title
      t.text        :body
      t.integer     :status
      t.integer     :role
      t.string      :owner
      t.text        :url

      t.text        :meta_title
      t.text        :meta_description
      t.text        :meta_keywords

      t.string      :locale
      
      t.timestamps null: false
    end

    add_attachment :projects, :image
  end
end
