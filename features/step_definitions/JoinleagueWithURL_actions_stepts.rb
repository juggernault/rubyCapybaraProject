require './pages/account'
require './pages/join_leagueWith_url'



When(/^I will fill with a valid username$/) do


  @account = Account.new
  @joinLeague = JoinLeagueWithUrl.new
  @joinLeague.fill_with_username_and_password
  @account.click_on_login_button



end

Then(/^I will access join league url multiple times with different league id$/) do
  i=0
  loop do
    i+=1
    #print "#{i} "
    break if i==10
  @joinLeague.visit_league_url

end


end

