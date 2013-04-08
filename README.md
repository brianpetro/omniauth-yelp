# OmniAuth Yelp

This gem contains the Yelp strategy for OmniAuth.

Yelp uses the OAuth2 flow, you can read about it here: http://www.yelp.com/developers/documentation/v2/authentication

## How To Use It

So let's say you're using Rails, you need to add the strategy to your `Gemfile`:

    gem 'omniauth-yelp'


Once these are in, you need to add the following to your `config/initializers/omniauth.rb`:

    Rails.application.config.middleware.use OmniAuth::Builder do
      provider :yelp, "consumer_key", "consumer_secret" 
    end

You will obviously have to put in your key and secret, which you get when you register your app with Foursquare (they call them API Key and Secret Key). 

Now just follow the README at: https://github.com/intridea/omniauth

## Supported Rubies

OmniAuth Yelp is tested under 1.9