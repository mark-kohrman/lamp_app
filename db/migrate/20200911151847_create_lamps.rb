class CreateLamps < ActiveRecord::Migration[6.0]
  def change
    create_table :lamps do |t|
      t.string :color
      t.string :size
      t.integer :price

      t.timestamps
    end
  end
end
