class BandMembershipsController < ApplicationController
  include BandMembershipsHelper
  
  def create
    begin
      BandMembership.transaction do
          fail unless current_user.is_band_admin?(Band.find(params[:band_membership][:band_id]))
        
          bm = BandMembership.new(params[:band_membership])
          bm.save!
          notify_bm_create(bm)
          
          mr = MemberRequest
                .where("requester_id =? AND band_id = ?", bm.member_id, bm.band_id)
                .first
          mr.status = "approved"
          mr.save!
          redirect_to user_notifications_url(current_user)
      end
    rescue
        flash[:errors] = ["Errrror"]
        redirect_to user_notifications_url(current_user)
    end
  end
  
  
  def make_admin
    bm = BandMembership.find(params[:id])
    
    if current_user.is_band_admin?(bm.band)
      bm.admin = true
      bm.save
      notify_bm_admin(bm)
      
      redirect_to band_url(bm.band)
    else
      redirect_to band_url(bm.band)
    end
  end
  
end
