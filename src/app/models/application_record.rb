class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  include QueryScopes
  
  default_scope { select(attribute_names - %w[created_at updated_at]) }
end
