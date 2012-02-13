# lunchspot

An app for rating restaurants that you and your coworkers frequent. A local or corporate yelp? Built this specifically for SourceNinja for us to identify the best burrito places.

## No Authorization Required
Can authenticate with github, twitter, etc.

Currently only github, but look at omniauth on how to add additional authentications.

## To Contribute

1. Fork Project.
2. Change Code.
3. Please write unit tests.
4. Send Pull Request.

## To begin

Register an application on github or other places you want to do oauth.
[Github](https://github.com/account/applications)

After creating your application on github, you will need to configure heroku to use those variables. Issue the following commands:

		heroku config:add GITHUB_ID=XXXXXXXXXXX
and
		heroku config:add GITHUB_SECRET=XXXXXXXXXXX