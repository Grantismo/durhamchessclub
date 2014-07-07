ActiveAdmin.register Post do


  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :content, :published_at, :publish, :title
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end
  #
  #
  
  action_item :only => :show do
    link_to "Preview Post", post_path(post)
  end
  
  index do
    column :title do |p|
      link_to p.title, admin_post_path(p)
    end
    column :publish
    column :published_at
    actions
  end

  form do |f|
    f.inputs "Post Details" do
      f.input :title
      f.input :published_at, as: :date_picker
      f.input :publish
      f.input :content, as: :ckeditor
    end
    f.actions
  end

  show do |p|
    attributes_table do
      row :title
      row :published_at
      row :publish
      row(:content){|post| raw(post.content)}
    end
  end

end
