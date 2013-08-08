# LastCommit

Simple utility class to get last commit info from git repository.

## Installation

Add this line to your application's Gemfile:

``` ruby
gem "last_commit"
```

And then execute:

``` sh
$ bundle
```

Or install it by yourself:

``` sh
$ gem install last_commit
```

## Usage

``` ruby
require "last_commit"

last_commit = LastCommit.new("#{ENV["HOME"]}/git/repo/path", "master")

last_commit.author  # "Tomek Wałkuski"
last_commit.message # "Initial commit"
last_commit.sha     # "08feadfc6075dbeb696aa61e9d21383b2a6a0f0e"
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
