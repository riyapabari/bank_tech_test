class TransactionLog

	attr_reader :transaction_history

	def initialize(transaction_class = Transaction)
		@transaction_class = transaction_class
		@transaction_history = []
	end

	def addTransaction(date, credit, debit, balance)
		@current_transaction = @transaction_class.new(date, credit, debit, balance)
		@transaction_history << @current_transaction
	end

end