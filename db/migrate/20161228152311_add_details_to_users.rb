class AddDetailsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :height, :integer
    add_column :users, :bio, :string
    add_column :users, :contact, :string
  end
end
