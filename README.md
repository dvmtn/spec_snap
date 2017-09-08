# SpecSupport

Handy starter config for RSpec helpers.

Many of us end up with a toolset we like to use during our builds and end up with a huge `spec_helper.rb` file that gets copied from project to project.
To make this a little more controlled and quicker to get started with, we at [Developer Mountain](http://devmountain.co.uk) are collecting our most frequently used configurations into this gem to share them and see if they are useful to other people.

This gem provides a number of files which can be required in your `spec_helper.rb` or `rails_helper.rb` files to quickly get a reasonable config for integrating a tool or helper in rspec.
A good example is `database_cleaner`, a popular way of rolling back changes to your DB during tests. A common configuration is provided, so you can simply add `require 'spec_support/database_cleaner'` to your spec_helper and be on your way.

If you find SpecSupport useful, you might also enjoy [Rake-n-Bake](https://rubygems.org/gems/rake-n-bake), where we make our rake build configs modular and reusable in a similar way.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'spec_support'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install spec_support


## Usage

1. Look in `lib/spec_support` for any tools you want to drop in to your project quickly.
2. Install this gem and any gems required for the tool (ie. add the [Database Cleaner]() gem to your Gemfile)
2. In your `spec_helper.rb` or `rails_helper.rb`, require the config file. For example: `require 'spec_support/database_cleaner'`
3. Enjoy having your tooling setup that little bit quicker and more consistently.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/dvmtn/spec_support. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

