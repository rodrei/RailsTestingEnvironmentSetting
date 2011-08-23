require 'spec_helper'

describe "CreateUsers" do
  it 'should create a valid user' do
    visit users_path
    click_link "New"
    fill_in 'First name', :with => 'Rodrigo'
    fill_in 'Last name', :with => 'Pavano'
    click_button "Create User"
    User.first.first_name.should == 'Rodrigo'
    yes.should == 'yes'
  end
end
