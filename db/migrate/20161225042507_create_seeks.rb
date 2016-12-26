class CreateSeeks < ActiveRecord::Migration[5.0]
  def change
    create_table :seeks do |t|
      t.belongs_to :user, index: true
      t.belongs_to :comp, index: true
      t.string :role
      t.string :style
      t.string :level
      t.timestamps
    end
  end
end
