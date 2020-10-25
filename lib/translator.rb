require "yaml"
require 'pry'

def load_library(file)
  emoticons = YAML.load_file(file)
  emoticon_hash = Hash.new
  emoticons.each do |english_word, emoticon_set|
    emoticon_hash[english_word] = {:english => emoticon_set[0], :japanese => emoticon_set[1]}
  end
  emoticon_hash
end

def get_japanese_emoticon
  
end

def get_english_meaning(file, japanese_emoticon)
  hash_library = load_library(file)
  result = nil
  sorry_message = "Sorry, that emoticon was not found"
  hash_library.each do |meaning, languages|
    languages.each do |key, value|
      if value == japanese_emoticon
        result = meaning
      else
        "Sorry, that emoticon was not found"
      end
    end
  end
  if result
    result
  else
    sorry_message
  end
end




