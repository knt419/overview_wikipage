class CreatePluginSettings < ActiveRecord::Migration
  def change
    create_table :plugin_settings do |t|
      t.belongs_to :project, index: true, foreign_key: true
      t.string :pagename
    end
    add_index :plugin_settings, :project_id
  end
end
