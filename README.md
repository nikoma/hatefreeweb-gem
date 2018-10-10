# Hatefreeweb

The Hate Free Web is a project to make the web a little bit better. I use it to detect hate speech for https://www.hatefreeweb.org on websites our customers link to. It's one thing to make sure that your own site is free of hate speech but it is also important to monitor all sites you are linking to as they might change over time. So we have automated the process and monitor all customers outgoing links daily. 

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'hatefreeweb'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install hatefreeweb

## Usage

Request an API key by contacting us at https://www.hatefreeweb.org
At the moment only English is supported which will change over the next weeks. 


    require 'hatefreeweb'

    client = Hatefreeweb::Client.new("Your API KEY HERE")

    detection = client.detect("This content is fortunately clean!!","en")
    -> 0
    detection = client.detect("Here the tone has suffered because of some krauts!!","en")
    -> 1

KNOWN ISSUE: In case you get a "NoMethodError: undefined methodstringify_keys' for #HTTParty::Response:0x007fa9231ab1b0"`

It's telling you that the api key is invalid and therefore can't handle the server response. Please obtain a valid api key. 

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/hatefreeweb. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Hatefreeweb project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/hatefreeweb/blob/master/CODE_OF_CONDUCT.md).
