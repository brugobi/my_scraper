# require 'HTTParty'
require 'Nokogiri'
require 'open-uri'

# class Scraper
#     attr_accessor :parse_page

#     def initialize
#         doc = HTTParty.get("https://ca.indeed.com/jobs?q=developer&l=London%2C+ON")
#         @parse_page ||= Nokogiri::HTML(doc) #merorized the @parse_page so  it only gets assigned once
#     end 
    
#     titles = parse_page.css('.jobsearch-SerpJobCard').css('.title').css('.jobtitle').childrem.map { |title| title.text }.compact
# end

url = "https://ca.indeed.com/jobs?q=developer&l=London%2C+ON"
document = open(url)
content = document.read
parsed_content = Nokogiri::HTML(content)

# parsed_content.css('.jobsearch-SerpJobCard').css('.title').each do |jobtitle|
#     title = jobtitle.css('.jobtitle').inner_text
#     link =  jobtitle.css('.jobtitle').first.attributes["href"].value
#     puts title
#     # puts link
#     puts '------------------------------'
# end

# parsed_content.css('.jobsearch-SerpJobCard').css('.sjcl').each do |company_name|
#     name = company_name.css('.company').inner_text
#     puts name
#     puts '------------------------------'
# end

puts parsed_content.css('.result-link-bar-container').css('.result-link-bar').css('.date').first.inner_text
