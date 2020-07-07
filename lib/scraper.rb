require 'Nokogiri'
require 'open-uri'

class Scraper
    attr_accessor :parse_page

    def initialize
        url = "https://ca.indeed.com/jobs?q=developer&l=London%2C+ON"
        document = open(url)
        page = document.read
        @parse_page = Nokogiri::HTML(page) 
    end 
        
    def get_title
        title = jobsearch_container.css('.title').css('.jobtitle').children.map { |title| title.text }
        return false if title.empty?
        title
    end
    
    def get_company
        company = jobsearch_container.css('.sjcl').css('.company').children.map { |title| title.text }
        return false if company.empty?
        company
    end
    
    def get_date
        date = parse_page.css('.result-link-bar-container').css('.result-link-bar').css('.date').children.map { |title| title.text }
        return false if date.empty?
        date
    end
    
    private

    def jobsearch_container
        parse_page.css('.jobsearch-SerpJobCard')
    end
    
end
