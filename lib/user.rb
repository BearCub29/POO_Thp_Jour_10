require 'pry'

class User 
  attr_accessor :email , :age , :all_users
  @@all_users = []

  def initialize(email_to_save = "not specified",age_to_save = 0)
    @email = email_to_save
    @age = age_to_save
    @@all_users << self
  end

  def update_email(email_to_update)
    @email = email_to_update
  end

  def update_age(age_to_update)
    @age = age_to_update
  end

  def read_email
    return @email
  end

  def read_age
    return @age
  end

  def self.all

    return @@all_users

  end

  def self.find_by_email(email)
    @@all_users.each do |user|
      if user.inspect.include?"#{email}"
        return user
      else
        user.to_s
      end
    end 
  end
  
end

binding.pry


