class OverviewWikipageSettings < ActiveRecord::Base
  unloadable
  belongs_to :project
  attr_accessible :wikipage
end
