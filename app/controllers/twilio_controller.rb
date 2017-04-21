

require 'twilio-ruby'
 
class TwilioController < ApplicationController
  include Webhookable
 
  after_filter :set_header
 
  skip_before_action :verify_authenticity_token
 
  def voice
  	response = Twilio::TwiML::Response.new do |r|
  	  r.Say 'Hello! Thank you for calling Catalyst Interactive Consulting. Please hold while I transfer your call', :voice => 'alice'
  	  r.Dial '+923222786652'
  	  r.Say 'The call failed or the remote party hung up. Goodbye.'
  	
  	end
 
  	render_twiml response
  end
end

