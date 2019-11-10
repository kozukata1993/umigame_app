module ApplicationHelper
  def full_title(page_title = "")
    base_title = "Umigame App"
    page_title.empty? ? "#{base_title}" : "#{page_title} | #{base_title}"
  end

  def log_in_as(user)
  end
end
