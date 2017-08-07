def sort_array_asc(array)
  array.sort
end

def sort_array_desc(array)
  array.sort do |a, b|
    if a < b
      1
    elsif a == b
      0
    elsif a > b
      -1
    end
  end
end

def sort_array_char_count(array)
  array.sort do |a, b|
    if a.size < b.size
      -1
    elsif a.size == b.size
      0
    elsif a.size > b.size
      1
    end
  end
end

def swap_elements(array)
  element_a = array[1]
  element_b = array[2]
  array[1] = element_b
  array[2] = element_a
  array
end

def swap_elements_from_to(array, index, destination_index)
  array[index], array[destination_index] = array[destination_index], array[index]
  array
end

def reverse_array(array)
  array.reverse!
end

def kesha_maker(array)
  array.map do |string|
    string[2] = '$'
    string
  end
end

def find_a(array)
  array.select do |string|
    string.start_with?('a')
  end
end

def sum_array(array)
  array.inject(0, :+)
end

def add_s(array)
  array.map do |string|
    string << 's'
  end
  array[1] = array[1][0..-2]
  array
end
