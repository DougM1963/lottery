require "minitest/autorun"
require_relative "lottery.rb"

class TestLottery < Minitest::Test 

	def test_assert_that_1_equals_1
		assert_equal(1,1)
	end
    def test_assert_that_0_equal_1
    	lottery()
    	assert_equal(1, $number_array[0])
	end

	 def test_assert_that_55_equal_56
    	lottery()
    	assert_equal(56, $number_array[55])
	end

	 def test_assert_that_79_equal_80
    	lottery()
    	assert_equal(80, $number_array[79])
	end


end