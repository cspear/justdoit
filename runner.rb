require 'rubygems'
require 'logger'
require 'mechanize'
# require 'sinatra'
require './justdoit'


@mine = Justdoit.new

#link 1
@mine.clicking_links("PROFESSIONAL EXAMS",'http://www.gbci.org/homepage.aspx')

#link 2
@mine.clicking_links("Professional Directory", $newpage)


#click radio button
@mine.select_radio("name", "page")

#click country
# @mine.click_country("AFGHANISTAN", $newpage)

#click checkboxes
@mine.click_checkbox("pLeedAPBDC", $newpage)
@mine.click_checkbox("pLeedAPIDC", $newpage)
@mine.click_checkbox("pLeedAPOM", $newpage)
@mine.click_checkbox("pLeedAPHOMES", $newpage)
@mine.click_checkbox("pLeedAPND", $newpage)
@mine.click_checkbox("pLeedAP", $newpage)

@mine.submit_form("a", "b")

puts "-3-3-3-3-3-3-3-3-"
@mine.clicking_links("charlie", $newpage)
