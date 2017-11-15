require 'redmine'
require 'overview_wikipage_hook_listener'
require 'project_patch'

Redmine::Plugin.register :overview_wikipage do
  name 'Overview Wikipage plugin'
  author 'knt419'
  description 'This is a plugin for Redmine to show a wikipage in a project overview page'
  version '0.0.3'
  url 'https://github.com/knt419/overview_wikipage'
  author_url 'https://github.com/knt419'

  settings :default => {
    'wikipage_name' => 'overview',
  }, :partial => 'settings/overview_wikipage_settings'
end
