require 'httparty'
require 'Nokogiri'
require 'open-uri'

class Scraper
    attr_accessor :parse_page

    def initialize
        doc = HTTParty.get("https://ca.indeed.com/jobs?q=developer&l=London%2C+ON")
        @parse_page = Nokogiri::HTML(doc) #memorized the @parse_page so  it only gets assigned once
    end 

    # def initialize (link)
    #     @title = link.jobsearch_container.css('.title').css('.jobtitle').children.map { |title| title.text }.compact
    #     @company = link.jobsearch_container.css('.sjcl').css('.company').children.map { |title| title.text }.compact
    #     @date = link.css('.result-link-bar-container').css('.result-link-bar').css('.date').children.map { |title| title.text }.compact
    # end

    # def get_title (title)
    #     return false if title.empty?
    #     title
    # end    
    
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

    # def get_link
    #     jobsearch_container.css('.title').css('.jobtitle').first.attributes["href"].value
    # end 
    
end

# url = "https://ca.indeed.com/jobs?q=developer&l=London%2C+ON"
# document = open(url)
# content = document.read
# parsed_content = Nokogiri::HTML(content)

# parsed_content.css('.jobsearch-SerpJobCard').css('.title').each do |jobtitle|
#     title = jobtitle.css('.jobtitle').inner_text
#     link =  "https://ca.indeed.com#{jobtitle.css('.jobtitle').first.attributes['href'].value}"
#     puts title
#     puts link
#     puts '------------------------------'
# end

# parsed_content.css('.jobsearch-SerpJobCard').css('.sjcl').each do |company_name|
#     name = company_name.css('.company').inner_text
#     puts name
#     puts '------------------------------'
# end

# puts parsed_content.css('.result-link-bar-container').css('.result-link-bar').css('.date').first.inner_text
