require_dependency 'project'

module OverviewWikipage
  module ProjectPatch
    extend ActiveSupport::Concern

    included do
      unloadable
      has_one :overview_wikipage_settings, dependent: :destroy
      safe_attributes :overview_wikipage_settings_attributes
      accepts_nested_attributes_for :overview_wikipage_settings
    end
  end
end

ActionDispatch::Reloader.to_prepare do
  unless Project.included_modules.include?(OverviewWikipage::ProjectPatch)
    Project.send(:include, OverviewWikipage::ProjectPatch)
  end
end
