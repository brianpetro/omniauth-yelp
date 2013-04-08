require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Yelp < OmniAuth::Strategies::OAuth2
      option :client_options, {
        :site => 'http://api.yelp.com'
      }
      
      uid { raw_info['id'] }
      
      info do
        {
          :first_name => raw_info['firstName'], 
          :last_name  => raw_info['lastName'],
          :name       => raw_info['name'],
          :email      => (raw_info['contact'] || {})['email'],
          :image      => raw_info['photo'],
          :location   => raw_info['homeCity']
        }
      end
      
      extra do
        { :raw_info => raw_info }
      end

      def request_phase
        options[:authorize_params] = client_params.merge(options[:authorize_params])
        super
      end
      
      def auth_hash
        OmniAuth::Utils.deep_merge(super, client_params.merge({
          :grant_type => 'authorization_code'}))
      end    
      
      private
      
      def client_params
        {:client_id => options[:client_id], :redirect_uri => callback_url ,:response_type => "code"}
      end
    end
  end
end
