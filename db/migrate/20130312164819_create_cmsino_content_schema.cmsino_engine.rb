# This migration comes from cmsino_engine (originally 2013011001)
class CreateCmsinoContentSchema < ActiveRecord::Migration
  def up
    # page = :home 
    # name = :index
    # locale = :it
    create_table :cmsino_contents do |t|
      t.string   :page
      t.string   :name
      t.string   :locale
      t.string   :title
      t.text     :text
      t.datetime :from
      t.datetime :to
      t.string   :type
      t.timestamps
    end
  end
end

