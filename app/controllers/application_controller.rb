class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include DeviseWhitelist
  include SetSource
  include CurrentUserConcern
  include DefaultPageContent
  before_action :set_copyright

  def set_copyright
    @copyright = CopyrightViewTool::Renderer.copyright 'Lalit', 'All rights reserved'
  end
end

module CopyrightViewTool
  class Renderer
    def self.copyright name, msg
      "</p>&copy; #{Time.now.year} | <b>#{name}</b> #{msg}</p>".html_safe
    end
  end
end
