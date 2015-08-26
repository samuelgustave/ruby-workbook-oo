# ex1.rb
require "pry"

class SecurityLogger
  def create_log_entry(login)
    puts "#{login} has accessed the secret data at #{Time.now}."
  end
end

class Login
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

class SecretFile
  def initialize(secret_data, log = nil, name = nil)
    @data = secret_data
    if log != nil
      @log = SecurityLogger.new
      @login = Login.new(name)
    end
  end

  def authorize_access(log, name)
    if log != nil
      @log = SecurityLogger.new
      @login = Login.new(name)
    end
  end

  def get_data
    if @log != nil
      @log.create_log_entry(@login.name)
      puts @data
    else
      puts "unauthorized access!"
    end
  end
end

# create a security logger
steve = SecurityLogger.new

# create the secret file
secfile = SecretFile.new("CLASSIFIED!!!----President Kennedy was killed by a FBI agent named John Kimble---CLASSIFIED!!!", steve, 'steve')

# access data
secfile.get_data

# create the secret file without authorization
unsecured_file = SecretFile.new("CLASSIFIED!!!---The american never made it to the moon it is a conspiration---CLASSIFIED!!!")

# unauthorized access to the unsecured file
unsecured_file.get_data

# grant authorization
john = SecurityLogger.new
unsecured_file.authorize_access(john, 'john')
unsecured_file.get_data