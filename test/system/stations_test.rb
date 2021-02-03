require "application_system_test_case"

class StationsTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit stations_url
  
    expect(page).to have_button('Search')
  end
end
