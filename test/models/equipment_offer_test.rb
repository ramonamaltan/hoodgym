require 'test_helper'

class EquipmentOfferTest < ActiveSupport::TestCase
  should belong_to(:station)
  should have_many(:rentals)
  should have_many(:users)

  context 'validations' do
    should validate_presence_of(:name)
    should validate_inclusion_of(:availability).in_array([true, false])
  end

end
