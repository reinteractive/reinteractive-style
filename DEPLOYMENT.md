# Deployment

This gem is available on [RubyGems](https://rubygems.org/gems/reinteractive-style) to deploy a new version of the gem you will need to be an owner and follow the instructions below.

    git flow release start v0.0.0

change the version number in `lib/reinteractive/style/version.rb` to match the branch name created in the step above.

    git flow release finish v0.0.0
    git push origin
    git push --tags

    gem build reinteractive-style.gemspec
    gem push reinteractive-style-0.2.2.gem
