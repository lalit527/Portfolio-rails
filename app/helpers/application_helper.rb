module ApplicationHelper
  def login_helper
    if current_user.is_a?(User)
      link_to "Logout", destroy_user_session_path, method: :delete
    else
      (link_to "Login", new_user_session_path, method: :get) +
      "<br>".html_safe +
      (link_to "Signup", new_user_registration_path, method: :get)
    end
  end

  def soucre_helper(layout)
    if session[:source]
      greeting = "Thanks for visiting me from #{session[:source]} and you are on #{layout} page"
      content_tag(:p, greeting, class: "source-greeting")
    end
  end

  def copyright_generator
    PortfolioCopyrightTool::Renderer.copyright 'Lalit', 'All rights reserved'
  end
end
