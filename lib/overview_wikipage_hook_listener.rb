class OverviewWikipageHookListener < Redmine::Hook::ViewListener

  render_on(:view_projects_show_left, :partial => 'overview/overview')

end
