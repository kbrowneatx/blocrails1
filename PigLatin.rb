# Pig Latin Translator
def translate(string1)
  if isvowel?(string1[0])
    return string1 + "ay"
  else
    if isvowel?(string1[1])
      if string1[0..1] == "qu"
        return string1[2..-1] + "quay"
      else
        return string1[1..-1] + string1[0] + "ay"
      end
    else
      if isvowel?(string1[2])
        return string1[2..-1] + string1[0..1] + "ay"
      else
        return string1[3..-1] + string1[0..2] + "ay"
      end
    end
  end

end

def isvowel?(ltr1)
  ltr1 == "a" || ltr1 == "e" || ltr1 == "i" || ltr1 == "o" || ltr1 == "u"
end

puts translate("stupid")