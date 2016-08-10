# require 'statement'

# describe Statement do
# 	subject(:statement) { described_class.new( transaction_history ) }
#   let(:transaction1) { double :transaction1, date: Time.new(2012, 01, 10), credit: 1000, debit: 0, balance: 1000 }
#   let(:transaction2) { double :transaction2, date: Time.new(2012, 01, 13), credit: 2000, debit: 0, balance: 3000 }
#   let(:transaction3) { double :transaction3, date: Time.new(2012, 01, 14), credit: 0, debit: 500, balance: 2500 }
#   let(:transaction_history) { double }

	
# 	describe '#print' do
# 		it 'prints formatted statement of transaction history' do
# 			formatted_statement = "date || credit || debit || balance\n10/01/2012 || || 500.00 || 2500.00\n13/01/2012 || 2000.00 || || 3000.00\n10/01/2012 || 1000.00 || || 1000.00"
#       expect(statement.print).to eq formatted_statement
# 		end
# 	end

# end