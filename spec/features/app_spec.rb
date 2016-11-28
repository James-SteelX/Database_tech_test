require 'spec_helper'

feature 'App' do
  scenario 'visit front page for first time' do
    visit('/')
    expect(page).to have_content("Set key value pairs by visiting 'http://localhost/set?replacewhithkey=replacewithvalue")
  end

  scenario 'user sets a key value pair' do
    visit('/set?key=value')
    expect(page). to have_content('key: value')
  end

  scenario 'user requests a value using the key in the url' do
    visit('/set?key=value')
    visit('/set?key=key')
    expect(page).to have_content('key')
  end
end
