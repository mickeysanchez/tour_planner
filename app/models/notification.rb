class Notification < ActiveRecord::Base
  attr_accessible :message
  
  belongs_to :notifiable, polymorphic: true
end
