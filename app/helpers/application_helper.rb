# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  
  def icon_link_to(icon_name,link_name,link_url, opts={})
    img = image_tag("icons/#{icon_name}.png", :height => 15 ) 
    link_to(img + ' ' + link_name.to_s,link_url, opts)
  end
  
  
end
