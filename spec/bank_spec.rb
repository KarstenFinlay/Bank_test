require "bank"

describe Bank do

  it "checks user's balance at £0" do
    expect(subject.balance).to eq 0
  end

  describe "#withdraw" do
    it 'withdraws £10' do
      expect(subject.withdraw(10)).to eq "You withdrew £10"
    end
  end

  describe "#deposit" do
    it 'deposits £10' do
      expect(subject.deposit(10)).to eq "You deposited £10"
    end
  end

end