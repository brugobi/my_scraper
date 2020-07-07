# frozen_string_literal: true

require_relative '../lib/scraper.rb'

describe Scraper do
  let(:scraper) { Scraper.new }

  describe '#get_title' do
    it 'Returns Array' do
      expect(scraper.get_title).to be_an(Array)
    end
  end

  describe '#get_company' do
    it 'Returns Array' do
      expect(scraper.get_company).to be_an(Array)
    end
  end

  describe '#get_date' do
    it 'Returns Array' do
      expect(scraper.get_date).to be_an(Array)
    end
  end
end
