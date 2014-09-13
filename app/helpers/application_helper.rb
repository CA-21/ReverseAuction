module ApplicationHelper

  def full_title(title)
    base_title = app_name
    if title.empty?
      base_title
    else
      "#{base_title} | #{title}"
    end
  end

  def gravatar_for(user, options = { size: 100 })
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    size = options[:size]
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: user.name, class: 'img-responsive')
  end


  # Defines application-wide setting for application name. Change the app-name once
  # to get it reflected all over the application.

  def app_name
    'Wakil Sahab'
  end
end
