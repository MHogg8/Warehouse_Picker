require('minitest/autorun')
require_relative('../warehouse_picker')

class TestWarehouse <Minitest::Test

  def setup

    @a_row = {      
      
      a10: "rubber band",
      a9: "glow stick",
      a8: "model car",
      a7: "bookmark",
      a6: "shovel",
      a5: "rubber duck",
      a4: "hanger",
      a3: "blouse",
      a2: "stop sign",
      a1: "needle"

    }

    @b_row = {

      b1: "tyre swing",
      b2: "sharpie",
      b3: "picture frame",
      b4: "photo album",
      b5: "nail filer",
      b6: "tooth paste",
      b7: "bath fizzers",
      b8: "tissue box",
      b9: "deodorant",
      b10: "cookie jar",

    }

    
    @c_row = {

      c1: "rusty nail",
      c2: "drill press",
      c3: " chalk",
      c4: "word search",
      c5: "thermometer",
      c6: "face wash",
      c7: "paint brush",
      c8: "candy wrapper",
      c9: "shoe lace",
      c10: "leg warmers"

    }


    @warehouse = [@a_row, @c_row, @b_row]


  end

# test for question 1
def test_single_bay_thing()
  result = single_bay(@warehouse,:c5)
  assert_equal("thermometer", result)
end


# test for question 2
def test_single_bay_number()
  result = single_bay_number(@warehouse, "bookmark")
  assert_equal(:a7, result)
end


# test for question 3
def test_multiple_bay_thing()
  result = multiple_bay_thing(@warehouse,[:b6, :b10, :b5])
  assert_equal(["tooth paste", "cookie jar", "nail filer"], result)
end


# test for question 4 returning multiple bay numbers
def test_multiple_bay_number()
  result = multiple_bay_number(@warehouse, ["shoe lace", "rusty nail", "leg warmers"])
  assert_equal([:c9, :c1, :c10], result)
end


# test for question 5 checks for the items
def test_multiple_bay_thing_q5()
  result = multiple_bay_thing(@warehouse,[:b3, :c7, :c9, :a3])
  assert_equal(["picture frame", "paint brush", "shoe lace", "blouse"], result)
end
# test check for the distance between them
def test_multiple_bay_number_distance()
  result = multiple_bay_number_distance(@warehouse, [:b3, :c7, :c9, :a3])
  assert_equal(15, result)
end


# test for question 6
def test_multiple_bay_Qu6()
  result = multiple_bay_number_Qu6(@warehouse, ["hanger", "deodorant", "candy wrapper", "rubber band"])
  assert_equal([:a10, :a4, :b9, :c8], result)
end


end