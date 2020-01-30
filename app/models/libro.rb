class Libro < ApplicationRecord
#	has_one_attached :image_url
  belongs_to :autor

  validates :titulo, :precio, presence: true
end
