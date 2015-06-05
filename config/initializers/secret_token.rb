# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Dispatcher::Application.config.secret_key_base = '72934c2e9d49d5140326b0856373f9da3baf04eb636fc282de549e6621c5b15d6f0bb0a28da6a80fc9f0a9ce6029868537879eed1b4cb3813d4d75d6e182d3d7'
