module ApplicationHelper

  # This helper render many links (breadcrumbs)
  # on your page. <links> - there is Array of Hashes
  # e.g. [{url: '/home', name: 'Home'}, {name: 'Projects'}]
  def render_breadcrumbs(links)
    return unless links.is_a?(Array) && links.any?

    out = "<ul class='breadcrumbs'>"
    links.each do |link|
      _link = link[:url].present? ? link[:url] : "#"
      href = "<a class='link' href='#{_link}'>#{link[:name]}</a>"
      out += "<li role='menuitem' #{'class=current' if link[:url].blank?}>#{href}</li>"
    end
    out.html_safe
  end
end
