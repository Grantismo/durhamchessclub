class Post < ActiveRecord::Base
  default_scope { order('published_at DESC') }
end
