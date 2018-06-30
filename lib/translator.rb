# require modules here
require "yaml"

def load_library
  # code goes here
  library = {
    english: {},
    japanese: {}
  } 
  YAML.load_file('emoticons.yml').each do |emotion, emoticons|
      eng = emoticons[0]
      jpn = emoticons[1]
      library[:english][eng] = jpn
      library[:japanese][jpn] = 
    end  
  end
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end