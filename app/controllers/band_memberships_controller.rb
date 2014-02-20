class BandMembershipsController < ApplicationController
  
  def create
    begin
      BandMembership.transaction do
          bm = BandMembership.new(params[:band_membership])
          bm.save!
          mr = MemberRequest
                .where("requester_id =? AND band_id = ?", bm.member_id, bm.band_id)
                .first
          mr.status = "approved"
          mr.save!
          flash[:success] = ["#{bm.member.email} is now in #{bm.band.name}!"]
          redirect_to user_member_requests_url(current_user)
      end
    rescue
        flash[:errors] = ["Errrror"]
        redirect_to user_member_requests_url(current_user)
    end
  end
  
  
  def make_admin
    bm = BandMembership.find(params[:id])
    bm.admin = true
    bm.save
    redirect_to band_url(bm.band)
  end
  
end
