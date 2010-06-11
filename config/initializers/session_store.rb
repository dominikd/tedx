# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_tedx_session',
  :secret      => '0d15438c45763b3320083da7f16438147e9ef2afad67e10b7286fd393a9534e1a2d504e5b23ec8ecf22f86cdf89f499171bc032b1bcf463e6a9f0bce1f013ef3'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
