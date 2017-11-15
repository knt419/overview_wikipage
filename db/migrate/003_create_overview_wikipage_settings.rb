class CreateOverviewWikipageSettings < ActiveRecord::Migration
  def change
    create_table :overview_wikipage_settings do |t|
      t.belongs_to :project, index: true, foreign_key: true
      t.string :wikipage
    end
  end
end
