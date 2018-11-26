class AddAttachmentAvatarToPlanes < ActiveRecord::Migration[5.2]
  def self.up
    change_table :planes do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :planes, :avatar
  end
end
