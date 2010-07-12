# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_riccardo_nifty_store_session',
  :secret      => '526b363dbfe4dd4fa135bbbfef60b79922089375388e87eea9f1ba2c27c9f504cc1d85a3d999b4e1ecbd2caaca1f2434887e40964dd4343f58cb2c9233e864a4'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
