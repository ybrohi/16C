require 'twilio-ruby'

account_sid = 'AC7987efd5f6579d4f2fa0b7258605633b' # Your Account SID from www.twilio.com/user/account
auth_token = '9a9ba4229403f01d8e32169afb1e07f3'   # Your Auth Token from www.twilio.com/user/account

@client = Twilio::REST::Client.new account_sid, auth_token
message = @client.account.messages.create(
  from: '+17032700208',
  to: '+923222786652',
  body: 'Hey there from ruby!'
)

puts message.sid