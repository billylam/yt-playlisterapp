require 'spec_helper'

describe "Sessions" do
  subject { page }

  describe "signin page" do
    before { visit signin_path }

    describe "with valid information" do
      let(:user) { FactoryGirl.create(:user) }
      before do
        fill_in "Username", with: user.username
        fill_in "Password", with: user.password
        click_button "Sign in"
      end

      it { should have_link('Sign Out', href: signout_path) }
      it { should_not have_link('Sign In', href: signin_path) }
    end

  end
end
