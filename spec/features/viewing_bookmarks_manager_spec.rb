feature "viewing bookmarks manager" do
  scenario "visiting the index page" do
    visit '/'
    expect(page).to have_content "Bookmark Manager"
  end

end