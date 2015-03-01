ActiveAdmin.register Project do
  permit_params :image, :title, :body, :url, :status,
                :meta_keywords, :role, :tag_list, :owner, :locale

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
        image_tag project.image.url(:thumb) if project.image.exists?
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
      f.input :owner
      f.input :url, as: :string
      f.input :status, as: :select, collection: Project.statuses.keys.to_a
      f.input :role, as: :select, collection: Project.roles.keys.to_a
      f.input :tag_list
      f.input :body
      f.input :image, :required => false, :as => :file
    end

    inputs 'SEO' do
      f.input :meta_title, as: :string
      f.input :meta_description, as: :string
      f.input :meta_keywords, as: :string
    end

    f.actions
  end
end
