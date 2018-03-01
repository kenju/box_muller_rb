# BoxMuller

BoxMuller implementation in Ruby.

<!-- TOC -->

- [BoxMuller](#boxmuller)
  - [Installation](#installation)
  - [Usage](#usage)
    - [`BoxMuller::Distributor`](#boxmullerdistributor)
      - [`#distribute`](#distribute)
  - [Development](#development)
  - [Contributing](#contributing)

<!-- /TOC -->

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'box_muller'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install box_muller

## Usage

### `BoxMuller::Distributor`

#### `#distribute`

```ruby
distributor = BoxMuller::Distributor.new

p distributor.distribute(total: 1000, count: 10)
=> [102, 94, 105, 110, 115, 103, 83, 101, 104, 83]

p distributor.distribute(total: 1000, count: 10, variance: 1.0)
=> [99, 100, 100, 101, 99, 100, 100, 102, 100, 99]

p distributor.distribute(total: 1000, count: 10, variance: 100.0)
=> [29, -76, 101, 329, -20, 60, 198, 284, -162, 257]
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/kenju/box_muller.
