# == Schema Information
#
# Table name: venues
#
#  id                 :integer          not null, primary key
#  name               :string(255)
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  address            :string(255)
#  city               :string(255)
#  state              :string(255)
#  zipcode            :string(255)
#  image_file_name    :string(255)
#  image_content_type :string(255)
#  image_file_size    :integer
#  image_updated_at   :datetime
#

class Venue < ActiveRecord::Base
  attr_accessible :name, :address, :city, :state, :zipcode, :image
  
  validates :name, :address, :city, :state, :zipcode, presence: true
  
  has_attached_file :image, 
  styles: { medium: "500x500#", thumb: "200x200#" }, 
  default_url: "venue_missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  
  has_many :events, order: "date ASC", inverse_of: :venue
end
