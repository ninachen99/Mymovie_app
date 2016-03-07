class OrderMailer < ApplicationMailer
	default from: 'ninachen8@me.com'

	def thank_email(order)
		@mail = Mail.deliver do
			to '@order.email'
			from 'ninachen8@me.com'
		    subject 'Thank you for your order!'
	    end 
    end 
end
