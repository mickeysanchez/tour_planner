# == Schema Information
#
# Table name: events
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  band_id    :integer
#  venue_id   :integer
#  date       :datetime
#  tour_id    :integer
#

require 'test_helper'

class EventTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
