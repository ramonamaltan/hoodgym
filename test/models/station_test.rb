require 'test_helper'

class StationTest < ActiveSupport::TestCase
  setup do
    @station = stations(:freeletics)
  end

  test "station with name and location should be valid" do
    assert @station.valid?
  end

  test "station is invalid without name" do
    @station.name = nil
    refute @station.valid?
    assert_not_nil @station.errors[:name]
  end

  test "station is invalid without location" do
    @station.location = nil
    refute @station.valid?
    assert_not_nil @station.errors[:location]
  end

  test "station with existing location should be invalid" do
    other_station = stations(:beuth)
    @station.location = other_station.location
    assert_not @station.valid?
    assert_not_nil @station.errors[:location]
  end
end
