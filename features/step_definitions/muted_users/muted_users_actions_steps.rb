require './pages/muted_users'

When(/^I will navigate to the muted users options$/) do

  @mutedusers = MutedUsers.new
  @mutedusers.click_on_muted_users_tab

end

