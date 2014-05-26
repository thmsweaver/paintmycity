require 'spec_helper'

describe 'user can see a homepage' do

  it 'has the title paint my city' do
    visit root_path
    expect(page).to have_content 'paint'
  end

end
