# your code goes here
require 'pry'

# check if every element or arr begins with "r"
def begins_with_r(arr)
  arr.each do |str|
    if !str.start_with?("r")
      return false
    end
  end
  true
end

#return strings in an array that contain 'a'
def contain_a(arr)
  to_return = []
  arr.each do |str|
    if str.include?('a')
      to_return << str
    end
  end
  to_return
end

#return first str in array beginning with "wa"
def first_wa(arr)
  arr.each do |str|
    temp = str.to_s
    if temp.start_with?('wa')
      return str
    end
  end
  ""
end

#remove non-string objects in array
def remove_non_strings(arr)
  to_return = []
  arr.each do |obj|
    if obj.class == String
      to_return << obj
    end
  end
  arr = to_return
end

#count elements
def count_elements(arr)
  temp = Hash.new(0)
  arr.each do |key|
     temp[key[:name]] += 1
  end
  to_return = []
  temp.each do |name, count|
    to_return.push({:name => "#{name}",:count => count})
  end
  to_return
end

#combine two nested data structures
def merge_data(keys, data)
  actual_return = []

  #Extract :first_name=>"name"
  puts "Keys:\n\n" + keys.to_s

  #Extract data associated with "name"
  data.each do |innerhash|
    innerhash.each do |name, name_data|
      keys.each do |entry|
        if entry[:first_name] == name
          tempHash = entry.merge(name_data)
          actual_return.push(tempHash)
        end
      end
    end
  end

  actual_return
end


keys = [
      {
          :first_name => "blake"
      },
      {
          :first_name => "ashley"
      }
]

data = [
  {
    "blake" => {
       :awesomeness => 10,
            :height => "74",
         :last_name => "johnson"
   },
   "ashley" => {
       :awesomeness => 9,
            :height => 60,
         :last_name => "dubs"
   }
 }
]

#merge_data(keys, data)
