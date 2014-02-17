require 'spec_helper'

describe Event do
  it { should validate_presence_of(:date) }
  it { should validate_presence_of(:venue_id) }
  it { should belong_to(:venue) }
  it { should belong_to(:band) }
end
