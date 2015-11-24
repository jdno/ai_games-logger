# AIGames::Logger

This gem contains a simple logging facility that can be used in The AI Games'
competitions to log events. It provides several log levels and prints the output
to STDERR, where it is picked up by The AI Games' game engines.

## Installation

Add this line to your bot's Gemfile:

```ruby
gem 'ai_games-logger'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ai_games-logger

## Usage

First, import the logger using the following `require` statement:

```ruby
require 'ai_games/logger'
```

Now, you can use the logger like this:

```ruby
Logger.debug 'Hello World!' if Logger.debug?
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run
`rake test` to run the tests. You can also run `bin/console` for an interactive
prompt that will allow you to experiment.

## Contributing

Bug reports and pull requests are welcome on GitHub at
https://github.com/jdno/ai_games-logger. This project is intended to be a safe,
welcoming space for collaboration, and contributors are expected to adhere to
the [Contributor Covenant](contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the
[MIT License](http://opensource.org/licenses/MIT).
