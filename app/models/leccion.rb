class Leccion < ApplicationRecord
	belongs_to :curso
	has_many :apuntes
  has_attached_file :icon, styles: {
    medium: '300x300>',
    thumb: '96x96!'
  }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :icon, content_type: /\Aimage\/.*\z/
  has_attached_file :image, styles: {
    medium: '900x300>',
    thumb: '120x40!'
  }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
