class User < ActiveRecord::Base
  has_secure_password validations: false
  
  def name  
    "#{first_name} #{last_name}"
  end
end
