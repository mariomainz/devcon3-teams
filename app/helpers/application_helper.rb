module ApplicationHelper
  def markdown(text)
    markdown = Redcarpet::Markdown.new(
      Redcarpet::Render::HTML, :autolink => true, :space_after_headers => true
    )
    x = markdown.render(text).html_safe
    debugger
    x
  end
end
