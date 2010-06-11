# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

  def selected(tab)
    unless tab == 'home'
      request.request_uri.include?(tab) ? 'selected' : ''
    else
      (controller.controller_name + '/' + controller.action_name) == 'home/index' ? 'selected' : ''
    end
  end
end
