require 'pry'
def begins_with_r(ary)
value_to_return = true

ary.each do |element|
  if element[0] != "r"
    value_to_return = false
  end
end

value_to_return
end



def contain_a(ary)
array_to_return = []
ary.each do |element|
  if element.chars.include?("a")
    array_to_return << element
  end
end

array_to_return
end


def first_wa(ary)
ary.each do |element|
  if element.to_s.start_with?("wa")
    return element
  end
end
end



def remove_non_strings(ary)
array_to_return = []

ary.each do |element|
  if element.class == String
    array_to_return << element
  end
end
array_to_return
end



def count_elements(ary)
ary_uniq_values = ary.uniq

array_to_return = Array.new
ary_uniq_values.each do |element|
  count = 0
  ary.each do |orig_element|
    if orig_element == element
      count += 1
    end
  end
array_to_return << element
array_to_return.last[:count] = count

end

end

def merge_data(keys, data)
merged_data = []

keys.each do |key_pair|
  name = key_pair[:first_name]
  data.each do |person_hash|
    if person_hash[name] != nil
      # binding.pry
      person_hash[name][:first_name] = name
      merged_data << person_hash[name]
      # binding.pry
    end
  end
end


merged_data
end



def find_cool(data)
cool_hashes = []

data.each do |hash_of_person_with_indeterminate_temperature|
  if hash_of_person_with_indeterminate_temperature[:temperature] == "cool"
    cool_hashes << hash_of_person_with_indeterminate_temperature
  end
end

cool_hashes
end



def organize_schools(schools)
organized_schools = {}
schools.each do |school_name, location|
    location_string = location[:location]
    organized_schools[location_string] = []
end
schools.each do |school_name, location|
location_string = location[:location]
organized_schools[location_string] << school_name

end

organized_schools
end
