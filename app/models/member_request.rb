# == Schema Information
#
# Table name: member_requests
#
#  id           :integer          not null, primary key
#  requester_id :integer          not null
#  band_id      :integer          not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class MemberRequest < ActiveRecord::Base
   attr_accessible :requester_id, :band_id
   
   belongs_to :requester,
   class_name: 'User',
   foreign_key: :requester_id
   
   belongs_to :band
end
