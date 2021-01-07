# frozen_string_literal: true

require 'application_system_test_case'

class MarketPlacesTest < ApplicationSystemTestCase
  setup do
    @market_place = market_places(:one)
  end

  test 'visiting the index' do
    visit market_places_url
    assert_selector 'h1', text: 'Market Places'
  end

  test 'creating a Market place' do
    visit market_places_url
    click_on 'New Market Place'

    fill_in 'Address', with: @market_place.address
    fill_in 'Close hour', with: @market_place.close_hour
    fill_in 'District', with: @market_place.district
    fill_in 'Line', with: @market_place.line
    fill_in 'Name', with: @market_place.name
    fill_in 'Open hour', with: @market_place.open_hour
    check 'Pickup type' if @market_place.pickup_type
    fill_in 'Postcode', with: @market_place.postcode
    fill_in 'Service days', with: @market_place.service_days
    click_on 'Create Market place'

    assert_text 'Market place was successfully created'
    click_on 'Back'
  end

  test 'updating a Market place' do
    visit market_places_url
    click_on 'Edit', match: :first

    fill_in 'Address', with: @market_place.address
    fill_in 'Close hour', with: @market_place.close_hour
    fill_in 'District', with: @market_place.district
    fill_in 'Line', with: @market_place.line
    fill_in 'Name', with: @market_place.name
    fill_in 'Open hour', with: @market_place.open_hour
    check 'Pickup type' if @market_place.pickup_type
    fill_in 'Postcode', with: @market_place.postcode
    fill_in 'Service days', with: @market_place.service_days
    click_on 'Update Market place'

    assert_text 'Market place was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Market place' do
    visit market_places_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Market place was successfully destroyed'
  end
end
