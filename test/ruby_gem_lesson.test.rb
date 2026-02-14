require 'minitest/autorun'

class SampleTest < Minitest::Test
    def test_first
        assert_equal "string", "string\r\n".chop
    end
end
