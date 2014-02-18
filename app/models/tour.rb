# == Schema Information
#
# Table name: tours
#
#  id         :integer          not null, primary key
#  name       :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Tour < ActiveRecord::Base
  attr_accessible :name
  
  validates :name, presence: true
end
