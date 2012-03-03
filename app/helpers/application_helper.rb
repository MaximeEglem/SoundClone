module ApplicationHelper
  # Return the title base on the page
  def title
    base_title = "SoundClone"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
end
