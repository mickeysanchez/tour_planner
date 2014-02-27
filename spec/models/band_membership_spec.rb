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
#  active     :boolean          default(TRUE)
#

require 'spec_helper'

describe BandMembership do
  it { should validate_presence_of(:member_id) }
  it { should belong_to(:member) }
  it { should belong_to(:band)}
end
