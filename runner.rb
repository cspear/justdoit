require 'rubygems'
require 'logger'
require 'mechanize'
# require 'sinatra'
require './justdoit'

@mine = Justdoit.new

arg_username = ARGV[0]
arg_password = ARGV[1]
arg_country = ARGV[2]
arg_page = ARGV[3]

puts arg_username
puts arg_password

@mine.login_creds(arg_username, arg_password)

# if $failed == false

	#link 1
	@mine.clicking_links("PROFESSIONAL EXAMS",'http://www.gbci.org/homepage.aspx')

	#link 2
	@mine.clicking_links("Professional Directory", $newpage)


	#click radio button
	@mine.select_radio("name", "page")

	#click country
	# @mine.click_country("AFGHANISTAN", $newpage)
	#TODO: get values of country, display on page.
	#TODO: accept

	#click checkboxes
	@mine.get_page("A")
	@mine.click_checkbox("pLeedAPBDC", $newpage, "no")
	@mine.click_checkbox("pLeedAPIDC", $newpage, "no")
	@mine.click_checkbox("pLeedAPOM", $newpage, "no")
	@mine.click_checkbox("pLeedAPHOMES", $newpage, "no")
	@mine.click_checkbox("pLeedAPND", $newpage, "no")
	@mine.click_checkbox("pLeedAP", $newpage, "YES")

	puts "-3-3-3-3-3-3-3-3-"
	@mine.clicking_links("charlie", $newpage)

puts "new comment"


# else

	# puts "closing app from fail           ed login"

# end