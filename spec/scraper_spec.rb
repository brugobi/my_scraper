require_relative '../lib/scraper.rb'

describe Scraper do
  let(:scraper) { Scraper.new }

  describe '#job_title' do
    it 'Returns Array from the job_title' do
      expect(scraper.job_title).to be_an(Array)
    end
  end

  describe '#job_company from the job_company' do
    it 'Returns Array' do
      expect(scraper.job_company).to be_an(Array)
    end
  end

  describe '#job_date from the job_date' do
    it 'Returns Array' do
      expect(scraper.job_date).to be_an(Array)
    end
  end
end
