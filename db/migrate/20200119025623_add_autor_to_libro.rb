class AddAutorToLibro < ActiveRecord::Migration[5.2]
  def change
    add_reference :libros, :autor, foreign_key: true
  end
end
