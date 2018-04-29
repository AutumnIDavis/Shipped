class Boat < ApplicationRecord

  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :jobs, through: :bookings
  # has_and_belongs_to_many :jobs

  	has_attached_file :image,
 	:styles => { :medium => "30x30>", :thumb => "50x50>" },
 	:default_url => "/images/no_image.png"

	do_not_validate_attachment_file_type :image
end
