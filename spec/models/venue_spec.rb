# == Schema Information
#
# Table name: venues
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  address    :string(255)
#  city       :string(255)
#  state      :string(255)
#  zipcode    :string(255)
#

require 'spec_helper'

describe Venue do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:address) }
  it { should validate_presence_of(:city) }
  it { should validate_presence_of(:state) }
  it { should validate_presence_of(:zipcode) }
  
  it { should have_many(:events)}
end
