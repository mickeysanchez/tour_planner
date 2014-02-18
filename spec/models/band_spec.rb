# == Schema Information
#
# Table name: bands
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Band do
  it { should validate_presence_of(:name) }
  it { should have_many(:shows) }
  it { should have_many(:events) }
  it { should have_many(:members) }
  it { should have_many(:tours) }
  
  
  it "should find a user's role" do
    b = Band.create({name: "Cookie Collins"})
    u = b.members.create({email: "cookie@cookies.com", password: "password"})
    bm = b.band_memberships.first
    bm.role = "guitarist"
    bm.save
    
    expect(b.role_of(u)).to eq("guitarist")
  end
end
