require_relative 'spec_helper'

RSpec.describe 'Google Search' do
  let(:search_term) { Faker::Hipster.word }

  before do
    @homepage = HomePage.new
    @homepage.load
  end

  describe '#search' do
    scenario '#search for random word' do
      @resultpage = @homepage.search_for_term(search_term)
      expect(@resultpage.search_input_field.value).to eql search_term
    end
  end

end
