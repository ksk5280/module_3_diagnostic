require "rails_helper"

RSpec.feature "User can find stations by zip code" do
  scenario "they see the 10 closest stations within 6 miles sorted by distance" do
    visit "/"
    fill_in text_field_tag, with: "80203"
    click_on "Locate"
    expect(current_path).to eq "/search?zip=80203"
    expect(page).to have_content
    # Then I should see a list of the 10 closest stations within 6 miles sorted by distance
    # And the stations should be limited to Electric and Propane
    # And for each of the stations I should see Name, Address, Fuel Types, Distance, and Access Times# Then I should be on page "/search?zip=80203"
  end
end
