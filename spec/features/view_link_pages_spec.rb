require 'rails_helper'

describe "path to homepage" do
  it "lists all Links" do
    link_test = Link.create(title: "Test link 3", url: "http://www.yahoo.com")
    visit "links"
    expect(page).to have_content(link_test.title)
  end
  # 
  # it 'visits link' do
  #   link_test = Link.create(title: "Test link 3", url: "http://www.google.com")
  #   visit 'links'
  #   # save_and_open_page
  #   click_link link_test.title
  #   expect(page).to have_content('Google Search')
  #
  # end
end
