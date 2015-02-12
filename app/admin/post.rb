ActiveAdmin.register Post do
  permit_params :image, :title, :body, :meta_title, :meta_description,
                :meta_keywords, :locale, :tag_list

  index do
    selectable_column
    column :title
    column :locale
    actions
  end

  show do
    attributes_table do
      row :title
      row :image do
        image_tag post.image.url(:small) if post.image.exists?
      end
      row :locale
      row :tag_list
      row :meta_title
    end
    active_admin_comments
  end

  form do |f|
    inputs do
      f.input :title
      f.input :locale, as: :select, collection: ['ru', 'en'], default: 'ru'
      f.input :tag_list
      f.input :body
      f.input :image, :required => false, :as => :file
    end

    inputs 'SEO' do
      f.input :meta_title
      f.input :meta_description
      f.input :meta_keywords
    end

    f.actions
  end
end
