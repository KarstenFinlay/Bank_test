require "bank"

describe Bank do

  describe "#withdraw" do
    it 'withdraws £10 pounds' do
      expect(subject.withdraw(10)).to eq "You withdrew £10"
    end
  end

end