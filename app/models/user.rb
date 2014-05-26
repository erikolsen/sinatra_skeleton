class User < ActiveRecord::Base
  # Remember to create a migration!

  #expects a password_digest
  #proves an authenticate method
  #http://api.rubyonrails.org/v3.2.12/
  has_secure_password



  #user these when not using has_secure_password
  #http://bcrypt-ruby.rubyforge.org/

  # def password
  #   @password ||= BCrypt::Password.new(password_hash)
  # end

  # def password=(new_password)
  #   @password = BCrypt::Password.create(new_password)
  #   self.password_hash = @password
  # end

  # def self.authenticate(email, password)
  #   user = User.find_by_email(email)
  #   return user if user && (user.password == password)
  #   nil # either invalid email or wrong password
  # end
end
