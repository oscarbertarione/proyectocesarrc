class CreateApuntes < ActiveRecord::Migration[5.1]
  def change
    create_table :apuntes do |t|
      t.text :content
      t.integer :leccion_id

      t.timestamps
    end
  end
end
