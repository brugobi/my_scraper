require_relative './scraper'

class Variables
    def initialize 
        @scraper = Scraper.new
        @titles = scraper.get_title
        @names = scraper.get_company
        @dates = scraper.get_dates
    end
end
    