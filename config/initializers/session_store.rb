# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_newspaper_session',
  :secret      => '41d30f1ba9708e10eedf8b6cd07dbfc19f623d3a61899e0fde49bf5dab0f3c6f5055b87f866ba0c78a9ac754eebd0720d575443a5e2f39d61a9e316b906f3770'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
