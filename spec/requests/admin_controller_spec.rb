# -*- encoding : utf-8 -*-"
#
# @author Andi Altendorfer <andreas@altendorfer.at>
#
require "spec_helper"

describe Admin::AdminController do

  it "should show a dashboard" do
    visit admin_path
    page.should have_content "Admin Dashboard"
  end
end