require 'transaction'

describe Transaction do
	subject(:transaction_deposit) { described_class.new('01/01/2016', 100, 0, 100) }
	subject(:transaction_withdrawal) { described_class.new('01/01/2016', 0, 100, -100) }

	describe '#date' do
		it 'records the date of a transaction' do
			expect(transaction_deposit.date).to eq('01/01/2016')
		end
	end

	describe '#credit' do
		it 'records the credit of a deposit' do
			expect(transaction_deposit.credit).to eq(100)
		end
		it 'records the credit of a withdrawal as 0' do
			expect(transaction_withdrawal.credit).to eq(0)
		end
	end

	describe '#debit' do
		it 'records the debit of a deposit as 0' do
			expect(transaction_deposit.debit).to eq(0)
		end
		it 'records the debit of a withdrawal' do
			expect(transaction_withdrawal.debit).to eq(100)
		end
	end

	describe '#balance' do
		it 'records the balance of a transaction' do
			expect(transaction_deposit.balance).to eq(100)
		end
	end

end