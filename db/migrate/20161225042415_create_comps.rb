class CreateComps < ActiveRecord::Migration[5.0]
  def change
    create_table :comps do |t|
      t.string :name
      t.string :date
      t.string :location
      t.string :contact
      t.string :website
      t.timestamps
    end
  end
end
