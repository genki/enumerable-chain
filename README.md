# Enumerable::Chain

Provides method chain for each items of Enumerable

## Installation

Add this line to your application's Gemfile:

    gem 'enumerable-chain'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install enumerable-chain

## Usage

    require "pp"
    pp 10.times.<.**(3).> #=> [0, 1, 8, 27, 64, 125, 216, 343, 512, 729]
    pp 10.times.<.**(4).>.select{|i| i>100}.<.to_s.length.> #=> [3, 3, 4, 4, 4, 4]

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
