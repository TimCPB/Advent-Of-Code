require '../lib/day5.rb'

describe "Plane" do
  
  it "Finds the seat ID from a boarding pass" do
    plane = Plane.new
    test = plane.test_data
    p test
    plane.populate_seat_IDs(test)
    p plane.seat_IDs
    expect(plane.seat_IDs).to eq([567, 119, 820])
  end

  it "returns the highest Seat ID from the data" do
    plane = Plane.new
    test = plane.test_data
    plane.populate_seat_IDs(test)
    expect(plane.find_highest_ID).to eq(820)
  end

  it "returns the highest Seat ID for all input data" do
    plane = Plane.new
    input = plane.input_data
    plane.populate_seat_IDs(input)
    # p plane.find_highest_ID
    # p plane.seat_IDs.sort
  end

  it "finds the missing seat" do
    plane = Plane.new
    input = plane.input_data
    plane.populate_seat_IDs(input)
    expect(plane.find_missing_seats).to eq(504)
  end
end