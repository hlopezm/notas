class Local < ApplicationRecord
  has_many :reports

  validates :first_name, presence: true
  validates :last_name, presence: true
end
