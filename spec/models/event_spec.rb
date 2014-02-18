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

require 'spec_helper'

describe Event do
  it { should validate_presence_of(:date) }
  it { should belong_to(:venue) }
  it { should belong_to(:band) }
  it { should belong_to(:tour) }
end
