class CreateLeccions < ActiveRecord::Migration[5.1]
  def change
    create_table :leccions do |t|
      t.string :number
      t.string :title
      t.text :summary
      t.text :content
      t.string :video
      t.integer :curso_id

      t.timestamps
    end
  end
end
