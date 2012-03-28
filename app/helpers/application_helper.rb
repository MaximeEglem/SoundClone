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
  
  def logo
	image_tag("SoundClone_logo.png", :alt => "SoundClone", :class => "round")
  end
end
