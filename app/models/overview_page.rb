class OverviewPage < ActiveRecord::Base
  unloadable
  belongs_to :project
  attr_accessible :pagename

  def init(project_id)
    overview_page.project_id = Project.find_by_id(project_id)

    unless overview_page
      overview_page = self.new
      overview_page.project_id = project_id
    end
    overview_page
  end
end
