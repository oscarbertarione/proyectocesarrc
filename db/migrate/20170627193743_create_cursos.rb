class CreateCursos < ActiveRecord::Migration[5.1]
  def change
    create_table :cursos do |t|
      t.string :title
      t.text :summary
      t.text :content

      t.timestamps
    end
  end
end
