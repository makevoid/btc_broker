require_relative "../../config/env"

DataMapper.auto_migrate!

# dev only: create dummy user

User.create username: "Ali"