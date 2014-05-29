require 'spec_helper'

describe 'a user can manage compositions' do
  let(:bob) { FactoryGirl.create(:user) }
  let(:dead_horse) { FactoryGirl.create(:composition, user_id: bob.id) }

  it 'can create a new composition' do
    visit new_user_composition_path(bob)
    fill_in "composition_title", with: dead_horse.title
    fill_in "composition_latitude", with: dead_horse.latitude
    fill_in "composition_longitude", with: dead_horse.longitude
    fill_in "composition_image_url", with: dead_horse.image_url
    click_button("submit")
    expect(page).to have_content dead_horse.title
  end

  # it 'can view an existing composition' do
  #   visit user_compositions_path(bob)
  #   expect(page).to have_content dead_horse.title
  # end

end
