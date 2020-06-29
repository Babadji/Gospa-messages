require 'open-uri'
require 'nokogiri'

Message.destroy_all
page = 1
78.times do
  url = "https://www.medjugorje.ws/fr/messages/#{page}"
  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)
  messages = html_doc.search('.poselstvi-mary').each do |element|
    message = Message.new(description: element.text.strip)
    message.save
    puts "created: " + message.description[0..25]
  end
  puts "page #{page} done !"
  page += 1
end
puts "all done!"



