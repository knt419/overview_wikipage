class OverviewPage < ActiveRecord::Base
  unloadable
  belongs_to :project
  attr_accessible :pagename
end
