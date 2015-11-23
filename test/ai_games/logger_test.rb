require 'test_helper'

module AIGames
  class LoggerTest < Minitest::Test
    def setup
      @output = StringIO.new
      Logger.output = @output
    end

    def test_that_it_has_a_version_number
      refute_nil ::AIGames::Logger::VERSION
    end

    def test_debug?
      Logger.log_level = Logger::DEBUG
      assert Logger.debug?

      Logger.log_level = Logger::INFO
      refute Logger.debug?

      Logger.log_level = Logger::WARN
      refute Logger.debug?

      Logger.log_level = Logger::ERROR
      refute Logger.debug?
    end

    def test_debug
      Logger.log_level = Logger::DEBUG

      Logger.debug('Tests are awesome')
      assert_equal('Tests are awesome', output)

      Logger.info('Tests are epic')
      assert_equal('Tests are epic', output)

      Logger.warn('Tests are marvelous')
      assert_equal('Tests are marvelous', output)

      Logger.error('Tests are lifesaver')
      assert_equal('Tests are lifesaver', output)
    end

    def test_info
      Logger.log_level = Logger::INFO

      Logger.debug('Tests are awesome')
      assert_equal(nil, output)

      Logger.info('Tests are epic')
      assert_equal('Tests are epic', output)

      Logger.warn('Tests are marvelous')
      assert_equal('Tests are marvelous', output)

      Logger.error('Tests are lifesaver')
      assert_equal('Tests are lifesaver', output)
    end

    def test_warn
      Logger.log_level = Logger::WARN

      Logger.info('Tests are epic')
      assert_equal(nil, output)

      Logger.warn('Tests are marvelous')
      assert_equal('Tests are marvelous', output)

      Logger.error('Tests are lifesaver')
      assert_equal('Tests are lifesaver', output)
    end

    def test_error
      Logger.log_level = Logger::ERROR

      Logger.warn('Tests are marvelous')
      assert_equal(nil, output)

      Logger.error('Tests are lifesaver')
      assert_equal('Tests are lifesaver', output)
    end

    private

    def output
      @output.string.split("\n").last
    end
  end
end
