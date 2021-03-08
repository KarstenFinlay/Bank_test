require "bank"

describe Bank do

  it "checks user's balance at £0" do
    expect(subject.balance).to eq 0
  end

  describe "#withdraw" do

    before :each do
      subject.deposit(10)
    end

    it 'withdraws £10' do
      expect(subject.withdraw(10)).to eq "You withdrew £10, your current balance is £0"
    end

    it "gives an error if the user tries to withdraw money that they don't have" do
      expect{ subject.withdraw(20) }.to raise_error("Insufficient funds")
    end
  end

  describe "#deposit" do
    it 'deposits £10' do
      expect(subject.deposit(10)).to eq "You deposited £10, your current balance is £10"
    end
  end

end