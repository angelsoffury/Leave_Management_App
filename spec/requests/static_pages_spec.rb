require 'spec_helper'

describe "Static pages" do

   subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_selector('h1', text: "Leave Management App") }
    it { should have_content('Leave Management App') }
    it { should have_title(full_title('')) }
    it { should_not have_title('Home') }
  end

  it "should have the right links on the layout" do
    visit root_path

    click_link "Home"
    click_link "Leave Management App"
    expect(page).to have_title(full_title(''))
    click_link "Sign up now!"
    expect(page).to have_title(full_title('Sign up'))

  end

end