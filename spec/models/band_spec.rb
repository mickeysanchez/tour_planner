require 'spec_helper'

describe Band do
  it { should validate_presence_of(:name) }
  it { should have_many(:shows) }
  it { should have_many(:events) }
  it { should have_many(:members) }
  
  
  it "should find a user's role" do
    b = Band.create({name: "Cookie Collins"})
    u = b.members.create({email: "cookie@cookies.com", password: "password"})
    bm = b.band_memberships.first
    bm.role = "guitarist"
    bm.save
    
    expect(b.role_of(u)).to eq("guitarist")
  end
end
