class AddAttachmentImageToLeccions < ActiveRecord::Migration[5.0]
  def self.up
    change_table :leccions do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :leccions, :image
  end
end
