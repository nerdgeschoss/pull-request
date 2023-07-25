# Pullrequest

Automatically branch and create an empty pull request, automating an early-review workflow.

## Installation

### Requirements

#### GitHub CLI

[GitHub's CLI](https://cli.github.com//) (aka `gh`) is required. On _macOS_, simply install it through _HomeBrew_.

```bash
brew install gh
```

### Installing pr (pull-request) as part of your application

Add this line to your application's Gemfile:

```ruby
gem 'pull-request'
```

And then execute:

```bash
bundle
```

### Installing pr (pull-request) standalone

Install it yourself as:

```bash
gem install pull-request
```

## Usage

### Create pull request to fix an issue

Assuming an issue #42 entitled `Create Clients Endpoint` exists.

```bash
pr -i 42
```

Creates a branch `feature/42_create_clients_endpoint` and opens a pull request for issue #42 named `Create clients endpoint`, including `fixes #42` in its description (linking the PR to the issue).

### Create custom pull request

```bash
pr "Create clients endpoint"
```

Creates a branch named `feature/create_clients_endpoint` and open a pull-request named `Create clients endpoint`.

The quotes are optional, but allow `:` and other characters to be a part of the name (otherwise interpreted by the
shell).

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Jens Ravens/pullrequest. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## Troubleshooting

**No such file or directory**
 
```
pr -i 210
pr: cannot open 210, No such file or directory
```

`pr` is already a command on the OS, until we override it with our GEM. If encountering this error it means that the gem has not been installed successfully for this Ruby version.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
