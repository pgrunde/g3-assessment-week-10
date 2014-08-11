require "rails_helper"

feature "Applcation" do
  scenario "Can do stuff" do
    visit "/"

    expect(page).to have_content "Welcome"
  end

  scenario "can click about to read up on mee-maw's roast squirrel quality" do
    visit "/"

    click_link "About"
    expect(page).to have_content "mee-maw"
  end

  scenario "can click new gif, fill in stuff and create a new gif" do
    visit "/"

    click_link "New gif"
    expect(page).to have_content "Url"

    fill_in "Url", with:"http://38.media.tumblr.com/aa9dca6de1e5b70391e123aa2cd9b2b7/tumblr_n9al4jQchv1tc08xbo2_400.gif"
    fill_in "Description", with:"An excellent face day."
    click_button "Create gif"
    expect(page).to have_content("face day")
  end

  scenario "validates work on the form properly" do
    visit "/"
    click_link "New gif"

    fill_in "Url", with:""
    fill_in "Description", with:"An excellent face day."
    click_button "Create gif"
    expect(page).to have_content("Url can't be blank")

    fill_in "Url", with:"http://38.media.tumblr.com/aa9dca6de1e5b70391e123aa2cd9b2b7/tumblr_n9al4jQchv1tc08xbo2_400.gif"
    fill_in "Description", with:""
    click_button "Create gif"
    expect(page).to have_content("Description can't be blank")
  end

end
