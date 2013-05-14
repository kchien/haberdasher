# Haberdasher

[![Dependency Status](https://gemnasium.com/kchien/haberdasher.png)](https://gemnasium.com/kchien/haberdasher) 
[![Build Status](https://travis-ci.org/kchien/haberdasher.png?branch=master)](https://travis-ci.org/kchien/haberdasher)
[![Code Climate](https://codeclimate.com/github/kchien/haberdasher.png)](https://codeclimate.com/github/kchien/haberdasher)

Decorator library providing a [draper](https://github.com/drapergem/draper) style API for Rails 2.3.x apps. 

## Installation

### Rails 2.3.x

If you're using [bundler](http://gembundler.com/), then add this line to your application's Gemfile:

    gem 'haberdasher'

And then execute:

    $ bundle

If you're not using bundler: 

<pre>
# in config/environment.rb
config.gem "haberdasher"
</pre>

## Usage

## Writing Decorators

Similar to draper, decorators inherit from `Haberdasher::Decorator`, live in your `app/decorators`
directory, and are named for the model that they decorate:

```ruby
# app/decorators/article_decorator.rb
class ArticleDecorator < Haberdasher::Decorator
# ...
end
```
## Using Decorators

### Use `#decorate`
For the time being, explicitly `#include` the `Haberdasher::Decoratoratable` in your model:

```ruby
# app/models/article.rb
class Article < ActiveRecord::Base
  include Haberdasher::Decoratoratable
  #other methods....
end
```

### Or use the decorator explicitly without mixing any modules in
``` ruby
# app/controllers/articles_controller.rb
  def show
    @article = ArticleDecorator.new Article.find params[:id]
  end
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
