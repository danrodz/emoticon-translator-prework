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

def get_japanese_emoticon (path, emoticon)
  library = load_library(path)
  jpn_emoticon = library[:english][emoticon]
  return jpn_emoticon if jpn_emoticon
  "Sorry, that emoticon was not found"
end

def get_english_meaning
  # code goes here
end