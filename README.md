![status](http://app.sourceninja.com/status/4d0ff012-bb0c-4a95-b487-5ad9a23051a5.png)

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
heroku config:add REDIS_URL='redis://username:password@my.host:6789'
```

* Start Eating, Enjoying, and Rating! 

## Contribute

1. Fork project
2. Create a feature branch
3. Write your code (and tests please)
4. Push to your branch's origin
5. Create a Pull Request from your branch

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

