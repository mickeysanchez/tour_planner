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

require 'test_helper'

class BandMembershipTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
