class CreateOverviewPages < ActiveRecord::Migration
  def change
    create_table :overview_pages do |t|
      t.belongs_to :project, index: true, foreign_key: true
      t.string :pagename
    end
  end
end
