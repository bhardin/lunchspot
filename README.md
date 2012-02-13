# lunchspot

An app for rating restaurants that you and your coworkers frequent. A local or corporate yelp? I built this specifically for [SourceNinja](http://sourceninja.com) for us to identify the best burrito places close to us.

## No Authorization Required
By default uses github for authentication. You can easily add twitter, facebook, etc. I used the omniauth gem and some quick google searches, you can implement what you would like.

## Setting Up
* Clone Repo
* Setup on Heroku, add a RedisToGo Instance.
* Create a [Github application](https://github.com/account/applications)
* Add Keys to heroku

```
heroku config:add GITHUB_ID=XXXXXXXXXXX
heroku config:add GITHUB_SECRET=XXXXXXXXXXX
heroku config:add REDISTOGO_URL='redis://username:password@my.host:6789'
```

* Start Eating and Rating! 

## To Contribute

1. Fork Project.
2. Change Code.
3. Write unit tests.
4. Make Sure all unit tests pass.
5. Send Pull Request.

## Running Local

If you run locally, you will need to start a redis server

```
redis-server
```

In another window, type 

```
QUEUE=recommendable rake environment resque:work
```

This uses the awesome recommendable gem [located here](https://github.com/davidcelis/recommendable).

