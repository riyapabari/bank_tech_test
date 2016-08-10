require 'transaction'

describe Transaction do
	subject(:transaction_desposit) { describe_class.new('01/01/2016', 100, 0, 100) }
	subject(:transaction_withdrawal) { describe_class.new('01/01/2016', 100, 0, 100) }

	describe '#date' do
		it 'records the date of the transaction' do
			expect(transaction_deposit.date).to eq('01/01/2016')
		end
	end

	describe '#credit' do
	end

	describe '#debit' do
	end

	describe '#balance' do
	end

end