# rei-style

ReInteractive internal shared style configurations.

## Installation

Add this line to your application's Gemfile:

```ruby
group :development do
  gem "rei-style", git: "https://github.com/reinteractive/rei-style"
end
```

And then execute:

    $ bundle

## Usage

Create a `.rubocop.yml` with the following directives:

```yaml
inherit_gem:
  rei-style:
    - default.yml
```

There's no need to add the `rubocop` gem to your project's `Gemfile`; `rubocop`
is a dependency of `rei-style`, to ensure we use a consistent minimum version
across all of our projects.

## Credits

Inspired by [percy-style](https://github.com/percy/percy-style)
