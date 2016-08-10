require 'transaction_log'

describe TransactionLog do

	subject(:transaction_log) { described_class.new(transaction_class) }
	let(:transaction_class) { double :transaction_class, new: transaction }
	let(:transaction) { double :transaction }
	let(:date) { double :date }
	let(:credit) { double :credit }
	let(:debit ) { double :debit }
	let(:balance ) { double :balance }

	describe '#addTransaction' do
		it 'initializes a transaction' do
			expect(transaction_class).to receive(:new)
			transaction_log.addTransaction(date, credit, debit, balance)
		end
	end

	describe '#transactions' do
		it 'records transactions' do
			transaction_log.addTransaction(date, credit, debit, balance)
			expect(transaction_log.transaction_history).to include transaction
		end
	end

end