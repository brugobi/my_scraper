require_relative '../lib/scraper.rb'
require_relative '../lib/get_link.rb'  
    
    scraper = Scraper.new
    titles = scraper.get_title
    names = scraper.get_company
    dates = scraper.get_date
    # links = scraper.get_link

    (0...names.size).each do |index|
        puts "-------------------- index: #{index + 1} --------------------"
        puts "Job Title: #{titles[index]}"
        # puts "Link: #{links[index]}"
        puts "Company: #{names[index]}"
        puts "Date: #{dates[index]}"
    end

    # puts titles.class
    # puts names.class
    # puts dates.class