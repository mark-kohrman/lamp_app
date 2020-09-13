class AddImageUrlToLamps < ActiveRecord::Migration[6.0]
  def change
    add_column :lamps, :image_url, :string
  end
end
