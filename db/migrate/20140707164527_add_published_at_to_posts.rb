class AddPublishedAtToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :published_at, :datetime
    add_column :posts, :publish, :boolean
  end
end
