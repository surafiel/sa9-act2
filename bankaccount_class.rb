RSpec.describe BankAccount do
    describe "#deposit" do
      it "increases the balance by the deposit amount" do
        account = BankAccount.new(100)
        account.deposit(50)
        expect(account.balance).to eq(150)
      end
    end
  
    describe "#withdraw" do
      it "decreases the balance by the withdrawal amount if funds are available" do
        account = BankAccount.new(100)
        account.withdraw(50)
        expect(account.balance).to eq(50)
      end
  
      it "does not change the balance if insufficient funds" do
        account = BankAccount.new(100)
        account.withdraw(150)
        expect(account.balance).to eq(100)
      end
    end
  
    describe "#balance" do
      it "returns the current balance" do
        account = BankAccount.new(100)
        expect(account.balance).to eq(100)
      end
    end
  end