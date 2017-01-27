class Report < ApplicationRecord
  belongs_to :category
  belongs_to :local
  belongs_to :federal

  validates :nombre, presence: true,
            length: {minimum:3}
end
