require 'nokogiri'
require 'open-uri'

url = 'http://www.useragentstring.com/pages/Chrome/'
doc = Nokogiri::HTML(open(url))
doc.css('#liste ul li a').each do |link|
  puts link.content
end
