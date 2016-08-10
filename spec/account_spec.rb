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

end