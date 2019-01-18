require 'pry'

def reformat_languages(languages)
  new_hash = {}

  languages.each do |style, langs|
    langs.each do |language, type|
      level_2 = type
      level_2[:style] = [style]

      if new_hash[language]
        new_hash[language] = new_hash[language].merge(level_2) { |k, v1, v2| v1 == v2 ? v1 : v1 + v2 }
      else
        new_hash[language] = level_2
      end
    end
  end

  new_hash
end

def rl(languages)
  new_hash = {}

  languages.each do |style, langs|
binding.pry
      # level_2 = langs[:type]
      # level_2[:style] = [style]
      #
      # if new_hash[language]
      #   new_hash[language] = new_hash[language].merge(level_2) { |key, val1, val2| val1 == val2 ? val1 : val1 + val2 }
      # else
      #   new_hash[language] = level_2
      # end
  end
  new_hash
end
