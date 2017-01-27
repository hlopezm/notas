class Category < ApplicationRecord
  has_many :reports

  validates :name, presence: true,
            length: {minimum:3}
end
