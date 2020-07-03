require 'HTTParty'
require 'Nokogiri'

class Scraper
    attr_accessor :parse_page

    def initialize
        doc = HTTParty.get("https://ca.indeed.com/jobs?q=developer&l=London%2C+ON")
        @parse_page ||= Nokogiri::HTML(doc) #merorized the @parse_page so  it only gets assigned once
    end    
end