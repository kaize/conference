ruby '2.0.0'
source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

#NOTE: пока не корректно работает с cocoon
# gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

gem 'unicorn-rails'
gem 'airbrake'

#NOTE: запилить поддерку rails 4
# gem 'usefull_scopes'
gem 'twitter-bootstrap-rails'

gem 'pg'
gem 'haml-rails'
gem "less-rails"
gem 'validates'
gem 'state_machine'
gem 'bcrypt-ruby', '~> 3.0.0'
gem 'simple_form', :git => 'git://github.com/plataformatec/simple_form.git'
gem 'virtus'
gem 'term-ansicolor'
gem 'russian'
gem 'cocoon', :git => 'git://github.com/nathanvda/cocoon'
gem 'select2-rails'
gem 'enumerize', :git => 'git://github.com/brainspec/enumerize'

group :development do
  gem 'guard-minitest'
  gem 'guard-bundler'
  gem 'untranslated'
end

group :test do
  gem 'rake'
  gem 'coveralls', require: false
end

group :production do
  gem 'rails_12factor'
end

group :development, :test do
  gem 'minitest'
  gem 'factory_girl_rails'
end

group :production do
  gem 'rails_12factor'
end

group :doc do
  gem 'sdoc', require: false
end

# Use debugger
# gem 'debugger', group: [:development, :test]
