class CreateLibros < ActiveRecord::Migration[5.2]
  def change
    create_table :libros do |t|
      t.string :titulo
      t.decimal :precio
      t.text :descripcion
      t.date :fecha_publicacion

      t.timestamps
    end
  end
end
