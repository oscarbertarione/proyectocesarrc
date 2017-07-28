class AddAttachmentIconToCursos < ActiveRecord::Migration[5.0]
  def self.up
    change_table :cursos do |t|
      t.attachment :icon
    end
  end

  def self.down
    remove_attachment :cursos, :icon
  end
end
