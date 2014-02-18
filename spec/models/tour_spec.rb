# == Schema Information
#
# Table name: tours
#
#  id         :integer          not null, primary key
#  name       :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Tour do
  it { should validate_presence_of(:name) }
  it { should have_many(:events) }
end
