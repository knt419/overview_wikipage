class OverviewWikipageHookListener < Redmine::Hook::ViewListener
  def view_projects_show_left(context)
    html = ''
	formatter = Redmine::WikiFormatting::Textile::Formatter.new(Wiki.find_page(context[:project].to_param, :project => context[:project]).text)
	html << content_tag(:div, formatter.to_html().html_safe, :class => 'box')
	html
  end
end