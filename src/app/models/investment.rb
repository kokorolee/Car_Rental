class Investment < Contract

  has_many :rented_cars, dependent: :destroy
  belongs_to :admin
  # belongs_to :member
  # belongs_to :car
end
