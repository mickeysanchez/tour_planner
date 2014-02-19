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

require 'spec_helper'

describe MemberRequest do
  it { should belong_to(:requester) }
  it { should belong_to(:band) }
end
