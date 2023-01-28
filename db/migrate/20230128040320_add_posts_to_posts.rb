class AddPostsToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :title, :string
    add_column :posts, :check, :string
    add_column :posts, :start, :datetime
    add_column :posts, :end, :datetime
  end
end
