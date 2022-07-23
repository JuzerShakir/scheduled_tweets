# Scheduled Tweets

_Tagline_

<div align="center">
  <img src="public/project_logo.png" />
</div>

![](https://visitor-badge-reloaded.herokuapp.com/badge?page_id=juzershakir.scheduled_tweets&color=000000&lcolor=000000&style=for-the-badge&logo=Github)

<a href="https://wakatime.com/badge/user/ccef187f-4308-4666-920d-d0a9a07d713a/project/797d96e7-919f-4407-823e-a9abb0f760b7"><img src="https://wakatime.com/badge/user/ccef187f-4308-4666-920d-d0a9a07d713a/project/797d96e7-919f-4407-823e-a9abb0f760b7.svg" alt="wakatime"></a>

## ❗ Objectives

This web-app accomplishes the following:

- [x] Able to Sign Up, Sign In and send an email to reset the password.
- [x] Able to connect with Multiple Twitter Accounts
- [x] Able to list all twitter accounts that the user has linked.
- [x] Able to schedule a tweet.
- [x] Enable backgrounds Job with Sidekiq & Redis to publish the tweet to the Twitter.
- [x] Show all the tweets that were created.
- [x] Able to edit and delete the tweets that are not yet published.
- [x] Able to see the tweet on twitter if the tweet has been published.

---

## 💎 Required Gems

**This project was built on Ruby version _3.1.2_.**

Following gems were installed in these versions to execute the functionality:

|  **Gem Names**   |              **Gem**               |  **Version**   |                          **Use**                          |
| :--------------: | :--------------------------------: | :------------: | :-------------------------------------------------------: |
|      Rails       |             _'rails'_              | \***\*\_\*\*** |         _Use for executing and rendering web-app_         |
|    Postgresql    |               _'pg'_               | \***\*\_\*\*** |     _Use postgres as the database for Active Record_      |
|      BCrypt      |             _'bcrypt'_             |   **3.1.16**   |   _Secure hash algorithm for safely storing passwords_    |
| omniauth-twitter |        _'omniauth-twitter'_        |   **1.4.0**    |                       _Twitter API_                       |
| CSRF Protection  | _'omniauth-rails_csrf_protection'_ |   **1.0.1**    |                _Omniauth CSRF Protection_                 |
|     Twitter      |            _'twitter'_             |   **7.0.0**    |   _Authenticating web-app & user for publishing tweets_   |
|     Sidekiq      |            _'sidekiq'_             |   **6.5.1**    | _Background Job to connect with Twitter to publish tweet_ |

---

## ⚙️ Setting up a PostgreSQL user

If you don't have a user set on postgres, here's how to set new user:

```bash
sudo -u postgres createuser -s [username]
```

To set a password for this user, log in to the PostgreSQL command line client:

```bash
sudo -u postgres psql
```

Enter the following command to set the password:

```bash
\password your_password
```

Enter and confirm the password. Then exit the PostgreSQL client:

```bash
\q
```

---

## 📋 Execution

Run the following commands to execute locally:

The following will install required version of ruby (make sure [rvm is installed](https://rvm.io/rvm/install).)

```bash
rvm install 3.1.2
```

```bash
rvm use 3.1.2
```

```bash
git clone git@github.com:JuzerShakir/scheduled_tweets.git
```

```bash
cd scheduled_tweets
```

```bash
gem install rails -v 6.1.6.1
```

```bash
bundle install
```

```bash
rails db:setup
```

```bash
rails s
```

To see this web-app up and running without executing above commands locally,
I have deployed it on [Heroku](https://__name__.herokuapp.com/).

---
