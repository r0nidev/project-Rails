class AddImageUrlToLibro < ActiveRecord::Migration[5.2]
  def change
  	add_column :libros, :image_url, :string
  end
end
