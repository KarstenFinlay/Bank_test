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
      expect(subject.withdraw(10)).to eq "You withdrew £10.00 at #{subject.time.strftime("%d/%m/%Y")}, your current balance is £0.00"
    end

    it "gives an error if the user tries to withdraw money that they don't have" do
      expect{ subject.withdraw(20) }.to raise_error("Insufficient funds")
    end
  end

  describe "#deposit" do
    it 'deposits £10' do
      expect(subject.deposit(10)).to eq "You deposited £10.00 at #{subject.time.strftime("%d/%m/%Y")}, your current balance is £10.00"
    end
  end

  describe "#bank_statement" do
    it "Prints out bank statement" do
      subject.deposit(1000)
      subject.deposit(2000)
      subject.withdraw(500)
      expect(subject.bank_statement).to eq "#{subject.time.strftime("%d/%m/%Y")} || || £500.00 || £2500.00\n#{subject.time.strftime("%d/%m/%Y")} || £2000.00 || || £3000.00\n#{subject.time.strftime("%d/%m/%Y")} || £1000.00 || || £1000.00"
    end
  end

end