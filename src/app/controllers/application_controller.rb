class ApplicationController < ActionController::Base
  before_action :authenticate_admin!
  Rails.application.eager_load!
  @models = ApplicationRecord.subclasses.map(&:name)
end
