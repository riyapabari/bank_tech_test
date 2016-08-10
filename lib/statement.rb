class Statement

	def initialize(transaction_history)
		@transaction_history = transaction_history
	end

	def print
		header = "date || credit || debit || balance"
		content = ""
		@transaction_history.reverse.each do |transaction|
			content << "\n#{format_date(transaction.date)} || #{format_amount(transaction.credit)} || #{format_amount(transaction.debit)} || #{format_amount(transaction.balance)}"
		end
		header + content
	end

end

	private

	def format_date(date)
		date.strftime "%d/%m/%Y"
	end

	def format_amount(amount)
		amount == 0 ? "" : format("%.2f", amount)
	end