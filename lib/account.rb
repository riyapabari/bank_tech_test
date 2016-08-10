require_relative 'transaction_log'

class Account

	attr_reader :balance

	def initialize(transaction_log = TransactionLog.new)
		@balance = 0
		@transaction_log = transaction_log
	end

	def deposit(amount, date = Date.today)
		@balance += amount
		@transaction_log.add_transaction(date, amount, 0, @balance)
	end

	def withdraw(amount, date = Date.today)
		@balance -= amount
		@transaction_log.add_transaction(date, 0, amount, @balance)
	end

	def transaction_history
		@transaction_log.transaction_history
	end

	def print_statement
		header = "date || credit || debit || balance"
		content = ""
		transaction_history.reverse.each do |transaction|
			content << "\n#{format_date(transaction.date)} || #{format_amount(transaction.credit)} || #{format_amount(transaction.debit)} || #{format_amount(transaction.balance)}"
		end
		header + content
	end

	def format_date(date)
		date.strftime "%d/%m/%Y"
	end

	def format_amount(amount)
		amount == 0 ? "" : format("%.2f", amount)
	end

end