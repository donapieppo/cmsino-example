# This migration comes from cmsino_engine (originally 2015081205)
class CreateCmsinoMediaUsesSchema < ActiveRecord::Migration[5.0]
  def up
    create_table :cmsino_media_uses do |t|
      t.integer :cmsino_content_id
      t.integer :cmsino_medium_id
    end
  end

  def self.down
    remove_table :cmsino_media_uses
  end
end



