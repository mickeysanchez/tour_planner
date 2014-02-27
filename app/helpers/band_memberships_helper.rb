module BandMembershipsHelper
  include NotificationsHelper
  
  def notify_bm_create(bm)
    members = bm.band.members.where("member_id != ?", bm.member.id)
    notify_members(members,
      subject: bm,
      notification_type: :create)
    
    notify(bm.member,
      subject: bm,
      notification_type: :accepted)
  end
  
  def notify_bm_admin(bm)
    notify(bm.member,
      subject: bm,
      notification_type: :admin)
  end
  
  def notify_bm_leave(bm)
    notify_members(bm.band.members,
      subject: bm,
      notification_type: :leave)
  end
end
