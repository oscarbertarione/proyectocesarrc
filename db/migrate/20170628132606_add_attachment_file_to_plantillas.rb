class AddAttachmentFileToPlantillas < ActiveRecord::Migration[5.0]
  def self.up
    change_table :plantillas do |t|
      t.attachment :file
    end
  end

  def self.down
    remove_attachment :plantillas, :file
  end
end
