require "pry"

require "yaml"



def load_library(file_path)
  emotocons = YAML.load_file(file_path)
  new_emotocons = {}
  emotocons.each do |key, value|
    new_emotocons[key] = {}
    new_emotocons[key][:english] = value[0]
    new_emotocons[key][:japanese] = value[1]
  end
  new_emotocons
end

# Write a method, `get_japanese_emoticon`, that will take a traditional Western
   emoticon (i.g. `:)`) and translate it to its Japanese version (`(＾ｖ＾)`). It will also rely
   `load_library` to first load the YAML file.


def get_japanese_emoticon(file_path, emoticon)
  emoticons = load_library(file_path)
  emotoions.each do |key, value|
    if value[:english] == emoticon
      return value[:japanese]
    end
  end
    return "Sorry, that emoticon was not found"
end



def get_english_meaning(file_path, emoticon)
  emoticons = load_library(file_path)
    emoticons.each do |key, value|
      if value[:japanese] == emoticon
        return key
      end
    end
  return "Sorry, that emoticon was not found"
end