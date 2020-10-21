module ApplicationHelper
  # For customizing title use <% provide(:title, "Page Name") %>
  def seo_title(page_title = '')
    base_title = "Website Title for SEO"
    if page_title.empty? 
      base_title
    else
      [page_title, base_title].join(" | ")
    end
  end
end
