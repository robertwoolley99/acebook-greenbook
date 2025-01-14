require 'rails_helper'

RSpec.feature "Post", type: :feature do
  scenario "Can submit posts and view them" do
    sign_up_user
    make_post("Beep beep")

    expect(page).to have_content("Beep beep")
    expect(page).to have_content("Robot")
  end

  scenario "Posts are displayed in the correct order" do
    sign_up_user
    make_post("Beep beep")

    make_post("A later beep beep")
    expect("A later beep beep").to appear_before("Beep beep")
  end

end
