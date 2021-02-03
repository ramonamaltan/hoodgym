require "application_system_test_case"

class HomepagesTest < ApplicationSystemTestCase
  test "visiting the homepage to learn about Stations and Pricing" do
    visit root_path
  
    assert_selector "h1", text: "Hood Gym"
    assert_selector "h1", text: "Stations"
    assert_selector "h1", text: "Price Packages"
  end

  test "the homepage can lead you to the pricing page" do
    visit root_path
  
    click_on 'Buy credits'

    assert_equal pricing_path, page.current_path
    assert_text 'Price Packages'
  end

  test "Click on Discover leads to the stations page" do
    visit root_path
  
    click_on 'Discover'

    assert_equal stations_path, page.current_path
  end

  test "Click on Start Workout leads to the stations page" do
    visit root_path
  
    click_on 'Start Workout'

    assert_equal stations_path, page.current_path
  end
end
