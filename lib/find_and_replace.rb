class String
  define_method(:find_and_replace) do |original, replace|
    if self == original
      replace
    end
  end
end
