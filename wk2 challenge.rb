def link_to(text, address)
	"<a href=\"#{address}\">#{text}</a>"
end

def content_tag(tsym, &block)
	"<#{tsym}>#{yield}</#{tsym}>"
end

puts link_to("Google", "www.google.com")
puts content_tag(:div) { "Hello World!" }