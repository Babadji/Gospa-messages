require 'open-uri'
require 'nokogiri'

url = "https://www.medjugorje.ws/fr/messages/#{page}"
page = 1
2.times do
  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)
  messages = html_doc.search('.poselstvi-mary').each do |element|
    message.description = element.text.strip
    message = Message.new(description: element.text.strip)
    message.save
  end
  page += 1
end



