ActiveAdmin.register Post do


  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :content
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end
  #

  form do |f|
    f.inputs "Post Details" do
      f.input :content, as: :ckeditor
    end
    f.actions
  end

  show do |p|
    attributes_table do
      row(:content){|post| raw(post.content)}
    end
  end

end
