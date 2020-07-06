require 'httparty'
require 'Nokogiri'
require 'open-uri'

class Get_Web
    attr_accessor :parse_page
    def initialize
        doc = HTTParty.get("https://ca.indeed.com/jobs?q=developer&l=London%2C+ON")
        @parse_page = Nokogiri::HTML(doc) #memorized the @parse_page so  it only gets assigned once
    end
end
    