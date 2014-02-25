class BandMembershipsController < ApplicationController
  def create
    begin
      BandMembership.transaction do
          fail unless current_user.is_band_admin?(Band.find(params[:band_membership][:band_id]))
        
          bm = BandMembership.new(params[:band_membership])
          bm.save!
          
          bm.member.notifications.create({ 
            message: "Your member request was accepted! You are now a member of 
                      <a href='#{band_url(bm.band)}'> #{bm.band.name}! </a>" 
          })
            
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
    
    if current_user.is_band_admin?(bm.band)
      bm.admin = true
      bm.save
      
      bm.member.notifications.create({ 
        message: "You are now an admin for:  
                  <a href='#{band_url(bm.band)}'> #{bm.band.name}! </a>" 
      })
      
      redirect_to band_url(bm.band)
    else
      redirect_to band_url(bm.band)
    end
  end
  
end
