# == Schema Information
#
# Table name: band_memberships
#
#  id         :integer          not null, primary key
#  member_id  :integer          not null
#  band_id    :integer          not null
#  role       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  admin      :boolean          default(FALSE), not null
#

class BandMembership < ActiveRecord::Base
  attr_accessible :member_id, :band_id, :role
  
  belongs_to :member,
    class_name: 'User',
    foreign_key: :member_id
    
  belongs_to :band
end
