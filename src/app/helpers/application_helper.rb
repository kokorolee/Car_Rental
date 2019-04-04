module ApplicationHelper
  include ActionView::Helpers::NumberHelper
  
  def all_routes
    Rails.application.routes.routes.map do |route|
      { alias: route.name, controller: route.defaults[:controller], action: route.defaults[:action] }
    end
  end

  def all_resources
    all_routes.select do |e|
      e[:action] == 'index' &&
        e[:alias] != 'rails_info' &&
        !e[:alias].nil? &&
        e[:alias] != 'root' &&
        e[:alias] != 'admin' &&
        e[:alias] != 'rails_mailers'
    end
  end
end
