module BandMembershipsHelper
  include NotificationsHelper
  
  def notify_bm_create(bm)
    notify_members(bm.band.members,
      subject: bm,
      notification_type: :create)
    
    notify(bm.member,
      subject: bm,
      notification_type: :accepted)
  end
end
