# == Schema Information
#
# Table name: tours
#
#  id         :integer          not null, primary key
#  name       :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Tour do
  it { should validate_presence_of(:name) }
  it { should have_many(:events) }
  
  it "finds it's band in one SQL query" do
    b = Band.create({ name: "The Cluggs" })
    t = Tour.create({ name: "The Cluggs Big Tour" })
    b.events.create({ date: Time.now, tour_id: t.id })
    
    expect(t.band).to eq(b)
  end
end
