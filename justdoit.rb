



class Justdoit

  def clicking_links(link_name, page)
    puts "================ new page =============="

    agent = Mechanize.new
    linkpage = agent.get(page)

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

    puts "before checking #{form.radiobutton_with(:name => "CertType").checked}"

      form.radiobutton_with(:name => "CertType", :value => "1").check

    puts "after checking #{form.radiobutton_with(:name => "CertType").checked}"


  end



  def click_checkbox(checkbox_name, page)
    puts "------------------ checkboxes ----------------"

    # get an instance of Mechanize
    agent = Mechanize.new

    # GET page
    selection_page = agent.get("https://ssl12.cyzap.net/gbcicertonline/onlinedirectory/")

    # set the checkbox value based on its name.
    form = selection_page.form_with(:name => "shell")

      puts "checkbox value BEFORE: #{form.checkbox_with(:name => checkbox_name).checked}"
        form.checkbox_with(:name => checkbox_name).check
      puts "checkbox value AFTER: #{form.checkbox_with(:name => checkbox_name).checked}"

    end

    def submit_form(form, page)
      agent = Mechanize.new

    # GET page
      selection_page = agent.get("https://ssl12.cyzap.net/gbcicertonline/onlinedirectory/")

    # set the checkbox value based on its name.
      form = selection_page.form_with(:name => "shell")

      form.submit

      puts agent.page.uri.to_s


    end


    def login_creds

      # click 1st name to get credentials page to open.



    end



end





