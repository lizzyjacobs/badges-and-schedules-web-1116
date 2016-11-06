def badge_maker(name)
  return "Hello, my name is #{name}."
end

def batch_badge_creator(array)
  badge_array = []
  array.each {|name| badge_array << badge_maker(name)}
  badge_array
end

def assign_rooms(array)
  assign_array = []
  array.each_with_index {|name, index| assign_array.push <<
    "Hello, #{name}! You'll be assigned to room #{index + 1}!"
  }
  assign_array
end

def printer(array)
  batch_badge_creator(array).each {|x| puts x}
  assign_rooms(array).each {|x| puts x}
end
