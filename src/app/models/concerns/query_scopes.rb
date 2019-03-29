module QueryScopes
  extend ActiveSupport::Concern

  included do
    scope :ignore_fields_user, -> { select(attribute_names - %w[license_no class_license date_issue date_expired]) }
    scope :created_at_desc, -> { order(created_at: :desc) }
  end
end
