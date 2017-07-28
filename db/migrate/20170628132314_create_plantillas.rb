class CreatePlantillas < ActiveRecord::Migration[5.1]
  def change
    create_table :plantillas do |t|
      t.string :title
      t.text :summary
      t.integer :curso_id

      t.timestamps
    end
  end
end
