# -*- encoding : utf-8 -*-"
#
# @author Andi Altendorfer <andreas@altendorfer.at>
#
require "spec_helper"
require "support/admin_helper"
include AdminHelper
describe Admin::AdminController do

  it "should require an admin-user" do
    visit admin_path
    page.should have_content I18n.translate('admin.action.needs_sign_in', action: "Admin")
  end

  describe "When an admin is logged in" do

    before { sign_in_as_admin }

    it "should show a dashboard" do
      visit admin_path
      page.should have_content "Admin Dashboard"
    end

  end
end