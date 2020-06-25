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
end



def get_english_meaning
end