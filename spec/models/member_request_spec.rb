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

require 'spec_helper'

describe MemberRequest do
  it { should validate_presence_of(:band_id) }
  it { should validate_presence_of(:requester_id) }
  it { should ensure_inclusion_of(:status).in_array(["pending", "approved", "denied"]) }
  it { should belong_to(:requester) }
  it { should belong_to(:band) }
end
