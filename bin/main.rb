# frozen_string_literal: true

require_relative '../lib/variables.rb'

scraper = Scraper.new
titles = scraper.job_title
names = scraper.job_company
dates = scraper.job_date

(0...names.size).each do |index|
  puts "-------------------- index: #{index + 1} --------------------"
  puts "Job Title: #{titles[index]}"
  puts "Company: #{names[index]}"
  puts "Date: #{dates[index]}"
end
