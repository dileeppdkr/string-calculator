require './string_calculator'

describe StringCalculator do
  subject(:string_calculator) {described_class.new}

  describe '#add' do
    it "takes an empty string and returns 0" do 
      expect(string_calculator.add("")).to eq(0)
    end
  end
  
end