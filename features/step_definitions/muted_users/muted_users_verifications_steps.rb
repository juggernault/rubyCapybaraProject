require './pages/muted_users'
Then(/^I should see the muted users empty state text$/) do

  @mutedusers = MutedUsers.new
  @mutedusers.check_muted_users_empty_state_text

end
