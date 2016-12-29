class AddOpenToSeeks < ActiveRecord::Migration[5.0]
  def change
    add_column :seeks, :is_open, :boolean
  end
end
