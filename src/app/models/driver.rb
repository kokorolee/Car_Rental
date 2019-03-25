class Driver < User
  validates :license_no, :class_license, presence: true
  enum class_license: %i[A1 A2 A3 A4 B1 B2 C E]
end
