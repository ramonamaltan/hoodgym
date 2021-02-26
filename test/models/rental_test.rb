require 'test_helper'

class RentalTest < ActiveSupport::TestCase
  should belong_to(:user)
  should belong_to(:equipment_offer)

  context 'validations' do
    should validate_presence_of(:begin_at)
  end
end
