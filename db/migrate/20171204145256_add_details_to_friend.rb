class AddDetailsToFriend < ActiveRecord::Migration[5.1]
  def change
    add_column :friends, :exception, :string
    add_column :friends, :wasChoiced, :boolean
  end
end
