class CreateAutores < ActiveRecord::Migration[5.2]
  def change
    create_table :autores do |t|
      t.string :nombre
      t.string :apellido_paterno
      t.string :apellido_materno

      t.timestamps
    end
  end
end
