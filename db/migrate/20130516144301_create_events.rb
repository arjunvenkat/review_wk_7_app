class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.string :location
      t.string :date
      t.string :time
      t.float :price
      t.text :description
    end
  end
end
