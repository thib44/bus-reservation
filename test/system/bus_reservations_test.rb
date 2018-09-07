require "application_system_test_case"

class BusReservationsTest < ApplicationSystemTestCase
  setup do
    @bus_reservation = bus_reservations(:one)
  end

  test "visiting the index" do
    visit bus_reservations_url
    assert_selector "h1", text: "Bus Reservations"
  end

  test "creating a Bus reservation" do
    visit bus_reservations_url
    click_on "New Bus Reservation"

    click_on "Create Bus reservation"

    assert_text "Bus reservation was successfully created"
    click_on "Back"
  end

  test "updating a Bus reservation" do
    visit bus_reservations_url
    click_on "Edit", match: :first

    click_on "Update Bus reservation"

    assert_text "Bus reservation was successfully updated"
    click_on "Back"
  end

  test "destroying a Bus reservation" do
    visit bus_reservations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bus reservation was successfully destroyed"
  end
end
