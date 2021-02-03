require "application_system_test_case"

class PricingsTest < ApplicationSystemTestCase
  test "visiting the pricing page to see price packages" do
    visit pricing_path
  
    assert_selector "h1", text: "Price Packages"
  end
end
