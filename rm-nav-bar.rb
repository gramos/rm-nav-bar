require 'nokogiri'

file = File.open("/home/gramos/gastonramos.com.ar/blog/pasion-y-proposito-en-el-trabajo.html")
html = file.read
doc  = Nokogiri::HTML.parse(html)

menu = doc.css(".pure-menu-horizontal").first
menu.remove

File.open('out.html', 'w') { |file| file.write(doc) }
