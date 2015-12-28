def sort(array)
  sorted  = []
  threads = []

  array.each do |value|
    threads << Thread.new {
      sleep(value / 100.0)
      sorted << value
    }
  end

  threads.each do |thread|
    thread.join
  end

  sorted
end

#######################################################

puts
puts "#######################################################"
puts
puts "Press Ctrl+C when you are done sleep sorting"
puts

loop do
  print "Enter values to sort: "
  vs = STDIN.gets.chomp.split(' ').map(&:to_i)

  puts
  puts "#######################################################"
  puts
  puts vs.inspect
  puts

  sorted = sort(vs)

  puts "#######################################################"
  puts
  puts "Sorted values: #{sorted.inspect}"
  puts
  puts "#######################################################"
  puts
end

