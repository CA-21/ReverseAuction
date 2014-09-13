module ApplicationHelper

  def full_title(title)
    base_title = app_name
    if title.empty?
      base_title
    else
      "#{base_title} | #{title}"
    end
  end


  # Defines application-wide setting for application name. Change the app-name once
  # to get it reflected all over the application.

  def app_name
    'Wakil Sahab'
  end
end
