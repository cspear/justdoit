require 'rubygems'
require 'logger'
require 'mechanize'
# require 'sinatra'





agent = Mechanize.new
page = agent.get('http://www.llbean.com/')

page.links.each do |link|


  if link.text == "Footwear"

    puts "found footwear ---------------------------"

    link.click


    $my_new_link = agent.page.uri.to_s


  end

  puts link.text

end

puts "page 2 ------------------------------------"
page2 = agent.get($my_new_link)
page2.links.each do |link|

  puts link.text

  if link.text == "New Arrivals (90)"
    puts "yolo swaaaaaaaaaaaaaaaaaaaaaaaaaaag"

    link.click

    $my_new_link1 = agent.page.uri.to_s

    puts link.text

  end

end
puts "page3--------------------------"
page3 = agent.get($my_new_link1)
page3.links.each do |link|

  puts link.text

  if link.text == "customer service"
    puts "#yolo swaaaaaaaaaaaaaaaaaaaaaaaaaaag&77777&7777777777777777777777777777"

    link.click

    $my_new_link2 = agent.page.uri.to_s

    puts link.text

  end

end
puts "page4--------------------------"
page4 = agent.get($my_new_link2)
page4.links.each do |link|

 puts link.text

  end

puts "----we are trying to enter text in the search box and click search button."

mypage = page4.form_with(:name => 'search') do |finn|
  finn.freeText = "button"
end.submit

puts "page5 ---------------- button search"
$my_new_link3 = agent.page.uri.to_s
page5 = agent.get($my_new_link3)
page5.links.each do |link|

  puts link.text

end


