require_relative 'transaction_log'
require_relative 'statement'


class Account

	attr_reader :balance

	def initialize(transaction_log = TransactionLog.new, statement_class = Statement)
		@balance = 0
		@transaction_log = transaction_log
		@statement_class = statement_class
	end

	def deposit(amount, date = Date.today)
		@balance += amount
		@transaction_log.add_transaction(date, amount, 0, @balance)
	end

	def withdraw(amount, date = Date.today)
		@balance -= amount
		@transaction_log.add_transaction(date, 0, amount, @balance)
	end

	def print_statement
		@current_statement = @statement_class.new(transaction_history)
		@current_statement.print
	end

	private

	def transaction_history
		@transaction_log.transaction_history
	end


end