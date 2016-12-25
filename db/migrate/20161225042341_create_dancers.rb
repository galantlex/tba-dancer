class CreateDancers < ActiveRecord::Migration[5.0]
  def change
    create_table :dancers do |t|
      t.string :name
      t.string :height
      t.string :bio
      t.string :affiliation
      t.timestamps
    end
  end
end
