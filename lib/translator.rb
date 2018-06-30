# require modules here
require "yaml"

def load_library
  library = {
    english: {},
    japanese: {}
  } 
  YAML.load_file('emoticons.yml').each do |emotion, emoticons|
      eng = emoticons[0]
      jpn = emoticons[1]
      library[:english][eng] = jpn
      library[:japanese][jpn] = emotion
    end  
  end
  library
end

def get_japanese_emoticon
  library = load_library(file_path)
  result = library["get_emoticon"][emoticon]
  if result
    result
  else
    "Sorry, that emoticon was not found"
  end
end

def get_english_meaning
  # code goes here
end