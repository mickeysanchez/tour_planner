module NotificationsHelper
  def notify(user, options = {})
    defaults = {
      subject: "",
      differences: "",
      notification_type: ""
    }
    
    options = defaults.merge(options)
    
    user.notifications.create({ 
      notifiable_id: options[:subject].id,
      notifiable_type: options[:subject].class.to_s,
      notification_type: options[:notification_type],
      differences: options[:differences],
      changer_id: current_user.id
    })
  end
  
  def notify_members(members, options = {}) 
    members.each do |member|
      next if member == current_user 
      notify(member, options)
    end
  end
  
  def notify_admins(admins, options = {})
    notify_members(admins, options)
  end
end
