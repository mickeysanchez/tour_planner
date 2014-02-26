module NotificationsHelper
  def notify_members(band, message)
    band.members.each do |member|
      next if member == current_user 
      member.notifications.create({ message: message })
    end
  end
  
  def notify_admins(band, message)
    band.admins.each do |admin|
      next if admin == current_user 
      admin. notifications.create({ 
        message: message
      })
    end
  end
end
