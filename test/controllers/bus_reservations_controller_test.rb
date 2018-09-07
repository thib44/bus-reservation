require 'test_helper'

class BusReservationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bus_reservation = bus_reservations(:one)
  end

  test "should get index" do
    get bus_reservations_url
    assert_response :success
  end

  test "should get new" do
    get new_bus_reservation_url
    assert_response :success
  end

  test "should create bus_reservation" do
    assert_difference('BusReservation.count') do
      post bus_reservations_url, params: { bus_reservation: {  } }
    end

    assert_redirected_to bus_reservation_url(BusReservation.last)
  end

  test "should show bus_reservation" do
    get bus_reservation_url(@bus_reservation)
    assert_response :success
  end

  test "should get edit" do
    get edit_bus_reservation_url(@bus_reservation)
    assert_response :success
  end

  test "should update bus_reservation" do
    patch bus_reservation_url(@bus_reservation), params: { bus_reservation: {  } }
    assert_redirected_to bus_reservation_url(@bus_reservation)
  end

  test "should destroy bus_reservation" do
    assert_difference('BusReservation.count', -1) do
      delete bus_reservation_url(@bus_reservation)
    end

    assert_redirected_to bus_reservations_url
  end
end
