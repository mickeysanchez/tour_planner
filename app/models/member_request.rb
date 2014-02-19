# == Schema Information
#
# Table name: member_requests
#
#  id           :integer          not null, primary key
#  requester_id :integer          not null
#  band_id      :integer          not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  status       :string(255)      default("pending"), not null
#

class MemberRequest < ActiveRecord::Base
   attr_accessible :requester_id, :band_id
   
   validates :band_id, :requester_id, :status, presence: true
   validates :status, inclusion: { in: ["pending", "approved", "denied"] }
   
   belongs_to :requester,
   class_name: 'User',
   foreign_key: :requester_id
   
   belongs_to :band
end
