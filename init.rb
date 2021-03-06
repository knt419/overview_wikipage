require 'redmine'
require 'overview_wikipage_hook_listener'
require 'project_patch'

Redmine::Plugin.register :overview_wikipage do
  name 'Overview Wikipage plugin'
  author 'knt419'
  description 'This is a Redmine plugin to show a wikipage in project overview'
  version '0.0.4'
  url 'https://github.com/knt419/overview_wikipage'
  author_url 'https://github.com/knt419'

  settings default: {
    pagename: 'overview'
  }, partial: 'settings/overview_wikipage_settings'
end
