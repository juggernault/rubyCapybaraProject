require './pages/want_togetinvolved'

Then(/^I should see want to get involved modal opened$/) do

  @wantinvolved = WantTogetinvolved.new
  @wantinvolved.want_to_get_involved_modal_is_opened

end

Then(/^I will not see want to get involved modal opened$/) do

  @wantinvolved.want_to_get_involved_modal_is__not_opened


end