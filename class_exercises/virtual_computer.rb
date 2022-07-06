class Computer
  @@users = {}

  def initialize
    @username = nil
    @password = nil
    @files = {}
    print "New user detected. Spinning up registration process"
    3.times do
      sleep 1
      print '.'
    end
    puts
    while @username == nil do
      puts "Please enter your username:"
      username_input = gets.chomp
      if @@users.include?(@username_input)
        "Username taken. Please try again."
      else
        @username = username_input
      end
    end
    while @password == nil do
      puts "Please enter a password"
      password_input = gets.chomp
      if password_input.length >= 6 
        @password = password_input 
      else
        puts "Password must be at least 6 characters."
      end
    end
    @@users[@username] = @password
  end

  def create(filename)
    time = Time.now
    @files[filename]=time
    puts "#{filename} created by #{@username} at #{time}"
  end

  def Computer.get_users
    return @@users
  end
end

puts "Welcome to BisComp Computing Solutions Model 12"
my_computer = Computer.new