# AlcatelXML

A wrapper to read Alcatel network xml files. Currently for 3G (RNC, NodeB)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'telecom'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install telecom

## Usage

```
  parser = AlcalteXML::Parser.new('path/to/xml/file', result_type)
```
AlcatelXML uses Saxerator to work with very large xml files typicall provided by telecom constructors.

By default it will return raw xml. Set result_type to `hash` to return a Ruby `Hash` or to `json`

```
  parser.bts_equipment
```
Return a list of BTSEquipment with attributes, PCM, BTSCell, VCC etc.

## Development

This gem is in development stage and is **NOT** ready for production. Use at your own risk and perils.

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/telecom. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.
