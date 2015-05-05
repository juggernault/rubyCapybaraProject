require './pages/want_togetinvolved'
require './pages/leaderboards'

When(/^I click on Create League button$/) do

  @leaderboards = Leaderboards.new
  @leaderboards.click_on_create_league_button

end

When(/^I will fill in the private code with six chars and I will click on Join league button$/) do

  @leaderboards.fill_private_code_text_box(123456)
  @leaderboards.click_on_join_private_league_button

end

When(/^I will click on Lob text area$/) do



end

When(/^I click on Photos tab$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I can see Lobs text area placeholder$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I will click on Blog tabThen I should see want to get involved modal opened$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

