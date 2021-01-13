class User < ApplicationRecord
    has_secure_password # validate the presence of password
    # gives us these methods:  .password=, .authenticate, .password
end
