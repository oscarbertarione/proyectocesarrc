class Plantilla < ApplicationRecord
	belongs_to :curso
	has_attached_file :file
  	validates_attachment :file, content_type: { content_type: "application/pdf" }
end
