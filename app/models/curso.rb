class Curso < ActiveRecord::Base
	has_many :plantillas
	has_many :leccions
  has_attached_file :icon, styles: {
    medium: '300x300>',
    thumb: '96x96!'
  }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :icon, content_type: /\Aimage\/.*\z/
end