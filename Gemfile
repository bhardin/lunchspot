source 'https://rubygems.org'

gem 'sourceninja'
gem 'rails', '3.2.0'
gem 'omniauth'
gem 'omniauth-github'
gem 'less-rails-bootstrap'
#gem 'recommendable', "~> 0.1.5"
gem "recommendable", :git => "git://github.com/davidcelis/recommendable.git"
gem 'redis'
gem 'jquery-rails'

group :development, :test do
	gem 'sqlite3'
end

group :production do
	gem 'pg'
	gem 'thin'
end

group :development do
	gem 'nifty-generators'
end

group :test do
	gem "mocha"
end


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer'

  gem 'uglifier', '>= 1.0.3'
end

