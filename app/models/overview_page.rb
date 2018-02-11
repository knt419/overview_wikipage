class OverviewPage < ActiveRecord::Base
  unloadable
  belongs_to :project
  attr_accessible :pagename

  def init(project_id)
      overview_page.project = Project.find_by_id(project_id)

    unless overview_page
        overview_page = OverviewPage.new
        overview_page.project.id = project_id
    end
    overview_page
  end
end
