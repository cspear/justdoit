



class Justdoit

  def clicking_links(link_name, page)
    puts "================ new page =============="

    agent = Mechanize.new
    linkpage = agent.get(page)

    newpage = agent.page.uri.to_s
    puts "this is the page we are on #{newpage}"

    linkpage.links.each do |eachlink|
      puts eachlink.text
      if eachlink.text == link_name
        puts "------found it------- #{link_name}"
        eachlink.click
        $newpage = agent.page.uri.to_s

      end
    end
  end

  def click_country(country_name, page)
    puts "++++++++ country list ++++++++++++"
#name = pCountry
    #get list

    agent = Mechanize.new
    selection_page = agent.get(page)
    form = selection_page
    selection_page.select_list.options_with(:value => 'pCountry').each do |item|
      puts item.text
    end


    #select item
      # select_list.options_with(:value => /1|2/).each do |field|
      #   field.value = '20'
      # end

  end

  def select_radio(name, page)

    agent = Mechanize.new

    selection_page = agent.get("https://ssl12.cyzap.net/gbcicertonline/onlinedirectory/")

    form = selection_page.form_with(:name => "shell")

    # puts "before checking #{form.radiobutton_with(:name => "CertType").checked}"

      form.radiobutton_with(:name => "CertType", :value => "1").check

    # puts "after checking #{form.radiobutton_with(:name => "CertType").checked}"


  end


  def get_page(page)

      agent = Mechanize.new

      agent.redirect_ok = true

      # GET page
      $get_selection_page = agent.get("https://ssl12.cyzap.net/gbcicertonline/onlinedirectory/")
  end


    def click_checkbox(checkbox_name, page, last)
        # puts "------------------ checkboxes ----------------"

      # get an instance of Mechanize
      # agent = Mechanize.new

      # # GET page
      # selection_page = agent.get("https://ssl12.cyzap.net/gbcicertonline/onlinedirectory/")

      # set the checkbox value based on its name.
        form = $get_selection_page.form_with(:name => "shell")

        form.checkbox_with(:name => checkbox_name).check

        if last == "YES"
          page = form.submit
          puts page.body
        else

        end
    end

    def login_creds(username, password)
      agent = Mechanize.new

      agent.redirect_ok = true

    # GET page
      selection_page = agent.get("https://ssl12.cyzap.net/gbcicertonline/login/")

    # set the checkbox value based on its name.
      form = selection_page.form_with(:name => "frmLogin")

      form['pUserName'] = username
      form['pPassword'] = password

      # test = form[:name => "pUserName"]
      # test2 = form[:name => "pPassword"]
      # puts test2
      # puts test

      page = form.submit

      newpage = agent.page.uri.to_s
      puts newpage

      sleep 5

      newpage = agent.page.uri.to_s
      puts newpage


      if newpage == "https://ssl12.cyzap.net/dzapps/dbzap.bin/apps/assess/webmembers/login/process_userpass"
        $failed = true
        puts "failed login attempt"
      else
        $failed = false
        puts "successful login"
      end

      # return failed
    end



end





