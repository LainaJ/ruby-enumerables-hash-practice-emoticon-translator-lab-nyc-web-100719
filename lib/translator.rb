# require modules here
require 'yaml'
require 'pry'

def load_library(file_path)
  emoticons = YAML.load_file(file_path)
  new_hash = {:get_meaning => {}, :get_emoticon => {} }

  emoticons.each do |key, value|
    new_hash[:get_meaning][value[1]] = key
    #the number [1] talks about emoticon ARRAY positions, then places it as equal to key position with hash that we're creating
    new_hash[:get_emoticon][value[0]] = emoticons[key][1]

  end
  new_hash
end

def get_japanese_emoticon(file_path, emoticon)
  load_library(file_path)
  emoticon_on_demand = load_library(file_path)[:get_emoticon][emoticon]
  if emoticon_on_demand = nil
    puts "Sorry, that emoticon was not found"
  end
  emoticon_on_demand
end

def get_english_meaning
  # code goes here
end
