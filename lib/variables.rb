require_relative './scraper'

class Variables
    attr_accessor :scraper, :titles, :names, :dates
    def initialize (scraper)
        @scraper = Scraper.new
        @titles = scraper.get_title
        @names = scraper.get_company
        @dates = scraper.get_dates
    end       
end

