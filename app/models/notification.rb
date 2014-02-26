# == Schema Information
#
# Table name: notifications
#
#  id                :integer          not null, primary key
#  notifiable_id     :integer
#  notifiable_type   :string(255)
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  user_id           :integer
#  notification_type :string(255)      not null
#  differences       :text             default("")
#  changer_id        :integer
#

class Notification < ActiveRecord::Base
  include I18n
  include Rails.application.routes.url_helpers
  
  attr_accessible :message, :notifiable_id, :notifiable_type, :notification_type, :differences, :changer_id
  attr_reader :translated_differences
  
  belongs_to :notifiable, polymorphic: true
  belongs_to :user, 
    class_name: 'User',
    foreign_key: :user_id
    
  belongs_to :changer,
    class_name: 'User',
    foreign_key: :changer_id
    
  def message 
    subject = self.notifiable_type.constantize.find(notifiable_id)
    
    if subject.is_a?(Band)
      @translated_differences = band_differences(subject)
      band_translator(subject)
    elsif subject.is_a?(Event)
      @translated_differences = event_differences(subject)
      event_translator(subject)
    end
  end
  
  private
  
  def differences_hash
    YAML.load(self.differences) || {}
  end
  
  def band_translator(band)
    case self.notification_type
    when "destroy"
      "Your band #{band.name} was deleted."
    when "image_change"
      "Your band <a href='#{band_path(band)}'> #{band.name}'s image </a> was changed."
    when "update"
      "<a href='#{user_path(changer)}'> #{changer.email} </a> made changes to your band: 
       <a href='#{band_path(band)}'> #{band.name} </a>"
    when "grab_shows"
       "Shows grabbed for your band 
        <a href='#{band_path(band)}'> #{band.name}</a>."  
    end
  end
  
  def band_differences(band)
    differences = []
    if differences_hash.keys.include?("name")
      old_name = differences_hash["name"][0]
      differences << 
      "Name changed from #{old_name} to 
      <a href='#{band_path(band)}'> #{band.name}.</a>"  
    end
    
    if differences_hash.keys.include?("image_file_name")
      differences << 
      "<a href='#{band_path(band)}'> 
      #{band.name} image has changed. </a>"   
    end
    differences
  end
  
  def event_translator(event)
    case self.notification_type
    when "create"
      "Your band <a href='#{band_path(event.band)}'> 
      #{event.band.name} </a>  has a new event on 
       <a href='#{event_path(event)}'> 
       #{I18n.l event.date, format: "%d %B %Y" }</a>."
    when "destroy"
      "Your band #{event.band.name}'s event at #{event.venue.name} on
      #{I18n.l event.date, format: "%d %B %Y"} was deleted."
    when "update"
       "Your band #{event.band.name}'s event on 
        <a href='#{event_path(event)}'> 
        #{I18n.l event.date, format: "%d %B %Y" }</a>
        has been updated."     
    end
             
  end
  
  def event_differences(event)
    differences = []
    if differences_hash.keys.include?("date")
      old_date = differences_hash["date"][0]
      differences << 
      "Date changed from #{I18n.l old_date, format: "%d %B %Y" } to 
       #{I18n.l event.date, format: "%d %B %Y" }"  
    end
    
    if differences_hash.keys.include?("venue_id")
      old_venue = differences_hash["venue_id"][0]
      differences << 
      "Venue was changed from #{Venue.find(old_venue).name} 
      to <a href='#{venue_path(event.venue)}'>  
      #{event.venue.name} </a> </li>"   
    end
    
    differences
  end
end
