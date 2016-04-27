require 'ai_games/logger/version'

module AiGames
  # The Logger is a simple logging facility that is indented to be used by bots
  # in any competition by The AI Games. It provides four log levels (DEBUG,
  # INFO, WARN and ERROR) and writes the logs to STDERR, where they are picked
  # up by The AI Games' game engines.
  module Logger
    DEBUG = 0
    INFO = 1
    WARN = 2
    ERROR = 3

    class << self
      # Sets the output stream the logger uses. For tests, pass StringIO.new. If
      # you do not initialize the output stream, $stderr is used.
      attr_writer :output

      # Returns the log level. If the log level has not been set, the default
      # log level is returned.
      def log_level
        @log_level ||= WARN
      end

      # Sets the log level. Available options are DEBUG, INFO, WARN,ERROR.
      def log_level=(log_level)
        @log_level = log_level if [DEBUG, INFO, WARN, ERROR].include?(log_level)
      end

      # Returns true if the log level is currently set to DEBUG. Use this before
      # calling `Logger.debug(log)` to prevent the unnecessary (and costly)
      # creation of strings.
      def debug?
        DEBUG == log_level
      end

      # Prints a debug log. If the log level is not set to debug, no action is
      # taken.
      def debug(log)
        output.puts log if log_level <= DEBUG
      end

      # Prints an info log. If the log level is not set to info or lower, no
      # action is taken.
      def info(log)
        output.puts log if log_level <= INFO
      end

      # Prints a warn log. If the log level is not set to warn or lower, no
      # action is taken.
      def warn(log)
        output.puts log if log_level <= WARN
      end

      # Prints an error log.
      def error(log)
        output.puts log if log_level <= ERROR
      end

      private

      # Returns the output stream. If the logger has not been initializes with
      # an output stream, $stderr is returned.
      def output
        @output ||= $stderr
      end
    end
  end
end
