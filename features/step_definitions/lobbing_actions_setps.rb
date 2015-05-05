require './pages/link_fb_to_sl'
require './pages/account'
require './pages/twitter_settings'
require './pages/registerwith_twitter'
require './pages/lobbing'



Then(/^I fill with a valid email address that i will use it for lobbing:$/) do

  @myfacebook = Facebook.new
  @account = Account.new
  @mytwitter = TwitterSettings.new
  @regtwitter = RegisterwithTwitter.new
  @lobbing = Lobbing.new

  logger.debug "I will fill with a valid email and password that I use it for lobbing"
  @lobbing.fill_email_adress_filed
  @lobbing.fill_register_password_field




end