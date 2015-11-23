require 'test_helper'

module AIGames
  class LoggerTest < Minitest::Test
    def test_that_it_has_a_version_number
      refute_nil ::AIGames::Logger::VERSION
    end
  end
end
