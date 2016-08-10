require 'account'

describe Account do

	subject(:account) {described_class.new}

	describe '#balance' do
		it 'has starting balance of 0' do
			expect(account.balance).to eq 0
		end
	end

	describe '#deposit' do
		it 'adds money to the account balance' do
			expect{account.deposit(100)}.to change{account.balance}.by 100
		end
	end

	describe '#withdraw' do
		it 'deducts money from the account balance' do
			expect{account.withdraw(100)}.to change{account.balance}.by -100
		end
	end

	describe '#print_statement' do
		it 'prints the accounts transaction history' do
			account.deposit(1000, Time.new(2012, 01, 10))
			account.deposit(2000, Time.new(2012, 01, 13))
			account.withdraw(500, Time.new(2012, 01, 14))
			formatted_statement = "date || credit || debit || balance\n14/01/2012 ||  || 500.00 || 2500.00\n13/01/2012 || 2000.00 ||  || 3000.00\n10/01/2012 || 1000.00 ||  || 1000.00"
      expect(account.print_statement).to eq formatted_statement
		end
	end

end