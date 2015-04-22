class String
  define_method(:find_and_replace) do |original, replace|
    phrase = self.split()
    new_array = []
    phrase.each() do |word|
      if word == original
        new_array.push(replace)
      else
        new_array.push(word)
      end
    end
    new_array.join(" ")
  end
end
