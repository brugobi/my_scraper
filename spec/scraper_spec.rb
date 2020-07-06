require_relative '../lib/scraper.rb'

describe Scraper do
    let(:scraper){Scraper.new}

    describe '#get_title' do
        it 'Returns Array' do
            expect(scraper.get_title).to be_an(Array)
        end
    end    
end