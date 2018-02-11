module OverviewWikipage
  class OverviewWikipageHookListener < Redmine::Hook::ViewListener
    render_on(:view_projects_show_left, partial: 'overview/overview')
    render_on(:view_projects_form, partial: 'projects/hook_view_projects_form')
  end
end
