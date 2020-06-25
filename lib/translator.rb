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




def get_japanese_emoticon(file_path, emoticon)
  emotocons = YAML.load_file(file_path)
  translation = ""
  emotocons.each do |key, value|
    if value[0] == emoticon
      translation += value[1]
    else
      return "Sorry, that emoticon was not found"
    end
  end
  translation
end



def get_english_meaning(file_path, emoticon)
  emotocons = load_library(file_path)
  meaning = ""
    emoticos.each do |key, value|
      if value[:english] == emoticon
        meaning += key
      end
    end
end