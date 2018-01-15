require_dependency 'project'

module OverviewWikipage
  module ProjectPatch
    extend ActiveSupport::Concern

    included do
      unloadable
      has_one :overview_page
      accepts_nested_attributes_for :overview_page
    end

    def overviewpagename
      overview_page.try :pagename
    end
  end
end

ActionDispatch::Reloader.to_prepare do
  unless Project.included_modules.include?(OverviewWikipage::ProjectPatch)
    Project.send(:include, OverviewWikipage::ProjectPatch)
  end
end
