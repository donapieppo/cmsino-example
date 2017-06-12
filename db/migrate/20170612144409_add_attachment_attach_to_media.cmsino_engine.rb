# This migration comes from cmsino_engine (originally 2015081202)
class AddAttachmentAttachToMedia < ActiveRecord::Migration[5.0]
  def self.up
    change_table :cmsino_media do |t|
      t.attachment :attach
    end
  end

  def self.down
    remove_attachment :cmsino_media, :attach
  end
end
