require "application_system_test_case"

class PricingsTest < ApplicationSystemTestCase
  test "visiting the pricing page to see price packages" do
    visit pricing_path
  
    assert_selector "h1", text: "Price Packages"
  end

  test "Click on Logo leads you back to homepage" do
    visit pricing_path

    find('.header_logo').click
    assert_equal root_path, page.current_path
  end
end
