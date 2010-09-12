# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_flex_blog_session',
  :secret      => '5bced3c465f4fb67114c02e41138840a23a67f6da04da126b0e5824eca6f575baddbfded4246e237b9ae675b4b65348d17b2a7cd5b3360eb08ed57c5d15626ab'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
