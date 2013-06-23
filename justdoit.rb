require 'rubygems'
require 'logger'
require 'mechanize'
# require 'sinatra'



# use Rack::Auth::Basic, "Restricted Area" do |username, password|
#     username == 'admin' and password == 'admin'
#     # $LOGME.debug "#{username} logged in"
#     @loggedin = username
# end


# a = Mechanize.new { |agent|
#   agent.user_agent_alias = 'Mac Safari'
# }

# a.get('http://google.com/') do |page|
#   search_result = page.form_with(:name => 'f') do |search|
#     search.q = 'Hello world'
#   end.submit

#   search_result.links.each do |link|
#     puts link.text
#   end
# end

a = Mechanize.new do |agent|
  agent.follow_meta_refresh = true
end

a.get("http://www.llbean.com/") do |page|

  # form = agent.page.forms[0]
  # puts agent.page.forms[0].fields.to_s



charlie = a.page.link_with(:text => "Swimwear")
charlie.click
  # click_swimwear = a.Click(home_page.link_with(:text => /Swimwear/))
  # puts click_swimwear
end
