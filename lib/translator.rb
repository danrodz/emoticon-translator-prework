# require modules here
require "yaml"

def load_library
  # code goes here
  library = {
    english: {},
    japanese: {}
  } 
  YAML.load_file('emoticons.yml').each do |emotion, emoticons|
      library[:bgk]
    end  
  end
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end