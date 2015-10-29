# LtsvConverter

This gem converts some objects to LTSV format and vice versa.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ltsv_converter'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ltsv_converter

## Usage

Basic usage is as following.

### Convert Object to LTSV


```ruby
message_hash = { title: 'sample message', body: 'This is a sample message.' }
LtsvConverter.to_ltsv(message_hash)
# => "title:sample message\tbody:This is a sample message."
```

### Convert LTSV to Object


```ruby
message_ltsv = "title:sample message\tbody:This is a sample message."
LtsvConverter.to_hash(message_ltsv)
# => { title: 'sample message', body: 'This is a sample message.' }
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake rspec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/shnjtk/ltsv_converter.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

