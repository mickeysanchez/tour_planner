class Notification < ActiveRecord::Base
  attr_accessible :message, :notifiable_id, :notifiable_type
  
  belongs_to :notifiable, polymorphic: true
  belongs_to :user, 
    class_name: 'User',
    foreign_key: :user_id
end
