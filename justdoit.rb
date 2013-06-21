require 'logger'
require 'mechanize'
require 'sinatra'



use Rack::Auth::Basic, "Restricted Area" do |username, password|
    username == 'admin' and password == 'admin'
    # $LOGME.debug "#{username} logged in"
    @loggedin = username
end


a = Mechanize.new { |agent|
  agent.user_agent_alias = 'Mac Safari'
}

a.get('http://google.com/') do |page|
  search_result = page.form_with(:name => 'f') do |search|
    search.q = 'Hello world'
  end.submit

  search_result.links.each do |link|
    puts link.text
  end
end