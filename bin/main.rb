require_relative '../lib/variables.rb'  
    
    scraper = Scraper.new
    titles = scraper.get_title
    names = scraper.get_company
    dates = scraper.get_date

    (0...names.size).each do |index|
        puts "-------------------- index: #{index + 1} --------------------"
        puts "Job Title: #{titles[index]}"
        puts "Company: #{names[index]}"
        puts "Date: #{dates[index]}"
    end
