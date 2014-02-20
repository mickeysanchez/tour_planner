# == Schema Information
#
# Table name: users
#
#  id                 :integer          not null, primary key
#  email              :string(255)      not null
#  password_digest    :string(255)      not null
#  token              :string(255)
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  image_file_name    :string(255)
#  image_content_type :string(255)
#  image_file_size    :integer
#  image_updated_at   :datetime
#

require 'spec_helper'

describe User do
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:password_digest).with_message("You gotta have a password!") }
  it { should have_many(:bands) }
  it { should have_many(:requests_made_for_band_membership) }
  
  describe "requests" do
    it "should find pending requests" do
      u = User.create({ email: "popular@tour_planner.com", password: "password" })
      b = u.bands.create({ name: "The Populars"})
      b2 = u.bands.create({ name: "The Super Populars"})
      b.make_admin!(u)
      b2.make_admin!(u)
      # not an admin in this next band
      b3 = u.bands.create({ name: "The Sort Of Populars"})
      u2 = User.create({ email: "unpopular@tour_planner.com", password: "password" })
      mr = MemberRequest.create({ band_id: b.id, requester_id: u2.id })
      mr2 = MemberRequest.create({ band_id: b2.id, requester_id: u2.id })
      mr3 = MemberRequest.create({ band_id: b3.id, requester_id: u2.id })
      
      expect(u.pending_requests.first).to eq(mr)
      expect(mr.status).to eq("pending")
      expect(u.pending_requests.last).to eq(mr2)
      expect(u.pending_requests.count).to eq(2)
      mr.status = "approved"
      mr.save
      expect(u.all_requests.count).to eq(2)
      expect(u.pending_requests.count).to eq(1)
    end
  end
  
  it "should be able to find band_membership given a band" do
    b = Band.create({name: "The Beatles"})
    u = b.members.create({email: "Paul@cookies.com", password: "password"})
    bm = b.band_memberships.first
    bm.role = "guitarist"
    bm.save
    
    expect(b.find_membership(u)).to eq(bm)
  end
  
  describe "has a change password method" do
    it "doesn't change password when you give it a wrong password" do
      u = User.create({email: "coltrane@coltrane.com", password: "password"})
      
      expect(u.change_password!("wrong", "iwantthispassword")).to be_false
    end
    
    it "does change password when you give it the right password" do
      u = User.create({email: "coltrane2@coltrane.com", password: "password"})
      
      expect(u.change_password!("password", "new_password")).to be_true
      expect(u.is_password?("new_password")).to be_true
    end
  end
  
  it "should be able to tell if you're in a band" do 
    u = User.create({email: "user@example.com", password: "password"})
    b = u.bands.create({name: "The Kooks"})
    b2 = Band.create({name: "The Smoochies"})
    
    expect(u.is_in_band?(b)).to be_true
    expect(u.is_in_band?(b2)).to be_false
  end 
  
  it "should be able to tell if you're a band admin" do
    u = User.create({email: "user2@example.com", password: "password"})
    b = u.bands.create({name: "The Kooks"})
    bm = u.band_memberships.first
    bm.admin = true
    bm.save
    b2 = u.bands.create({name: "The Smoochies"})
    
    expect(u.is_band_admin?(b)).to be_true
    expect(u.is_band_admin?(b2)).to be_false
  end
  
  it "can test if you have requested membership in a band" do
    u = User.create({email: "fanboy22@aol.com", password: "password"})
    b = u.bands.create({name: "Red Hot Chili Peppers"})
    
    expect(u.has_requested_membership?(b)).to be_false
    
    mem_request = MemberRequest.create({ requester_id: u.id, band_id: b.id })
    
    expect(u.has_requested_membership?(b)).to be_true
  end
end
