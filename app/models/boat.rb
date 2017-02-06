class Boat < ApplicationRecord
	has_and_belongs_to_many :jobs

	has_attached_file :photo, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/
	
	
end
