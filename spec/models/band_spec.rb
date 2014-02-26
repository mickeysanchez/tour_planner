# == Schema Information
#
# Table name: bands
#
#  id                 :integer          not null, primary key
#  name               :string(255)
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  image_file_name    :string(255)
#  image_content_type :string(255)
#  image_file_size    :integer
#  image_updated_at   :datetime
#  active             :boolean          default(TRUE)
#

require 'spec_helper'

describe Band do
  it { should validate_presence_of(:name) }
  it { should have_many(:shows) }
  it { should have_many(:events) }
  it { should have_many(:members) }
  it { should have_many(:tours) }
  it { should have_many(:member_requests) }
  
  it "can make user member and admin" do
    b = Band.create({name: "The Flying Buttresses"})
    u = User.create({email: "butterman@butters.com", password: "password"})
    b.make_member!(u)
    
    expect(u.bands.first).to eq(b)
    expect(b.members.first).to eq(u)
    expect(u.band_memberships.first.admin).to be_false
    
    b.make_admin!(u)
    expect(u.band_memberships.first.admin).to be_true
  end
  
  it "should find band_membership of a user" do
    b = Band.create({name: "The Smoochies"})
    u = b.members.create({email: "cookie@cookies.com", password: "password"})
    bm = b.band_memberships.first
    bm.role = "guitarist"
    bm.save
    
    expect(b.find_membership(u)).to eq(bm)
  end 
  
  it "should find a user's role" do
    b = Band.create({name: "Cookie Collins"})
    u = b.members.create({email: "cookie@cookies.com", password: "password"})
    bm = b.band_memberships.first
    bm.role = "guitarist"
    bm.save
    
    expect(b.role_of(u)).to eq("guitarist")
  end
end
