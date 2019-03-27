class UserAdmin < User
  self.ignored_columns = %w[license_no class_license date_issue date_expired]
end
