require 'rails_helper'

describe "path to homepage" do
  it "lists all Links" do
    link_test = Link.create(title: "Test link 3", url: "www.yahoo.com")
    visit "links"
    expect(page).to have_content(link_test.title)
  end
end
