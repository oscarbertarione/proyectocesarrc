class AddAttachmentIconToLeccions < ActiveRecord::Migration[5.0]
  def self.up
    change_table :leccions do |t|
      t.attachment :icon
    end
  end

  def self.down
    remove_attachment :leccions, :icon
  end
end
