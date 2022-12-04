require 'set'

range_pairs = File.readlines('data.txt').map! { |range_pair| range_pair.chomp }

def string_to_set(range_string)
  range_pair = range_string.split("-").map(&:to_i)
  set = (range_pair[0]..range_pair[1]).to_set
end

def contained?(set1, set2)
  set1 >= set2 || set2 >= set1
end

def overlapping?(set1, set2)
  !(set1 & set2).empty?
end

def convert_ranges(range_pairs)
  range_pairs.map do |range_pair| 
    range_pair.split(",").map { |s| string_to_set(s) }
  end
end
  
contained_pairs = convert_ranges(range_pairs).count { |ranges| contained?(*ranges) }
overlapping_pairs = convert_ranges(range_pairs).count { |ranges| overlapping?(*ranges) }

p "Number of contained pairs: " + contained_pairs.to_s
p "Number of overlapping pairs: " + overlapping_pairs.to_s
