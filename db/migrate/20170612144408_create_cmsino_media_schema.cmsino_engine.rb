# This migration comes from cmsino_engine (originally 2015081201)
class CreateCmsinoMediaSchema < ActiveRecord::Migration[5.0]
  def up
    create_table :cmsino_media do |t|
      t.string   :name
      t.text     :description
      t.string   :type
      t.timestamps
    end
  end

  def self.down
    remove_table :cmsino_media
  end
end

# post_name             | varchar(200)        | NO   | MUL |                     |                |
# post_parent           | bigint(20) unsigned | NO   | MUL | 0                   |                |
# post_type             | varchar(20)         | NO   | MUL | post                |                |
# post_mime_type        | varchar(100)        | NO   |     |                     |                |


