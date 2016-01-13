require 'spec_helper'

feature 'list videos' do
  scenario 'click a video to the show page' do
    videos = create_list(:video, 3)

    visit '/videos'

    video = videos.first
    click_link "video_#{video.id}"

    expect(page).to have_current_path("/videos/#{video.id}")

    video.users << build_list(:user, 10)
    visit "/videos/#{video.id}"

    assoc_user = video.users.first
    click_link "user_#{assoc_user.id}"

    expect(page).to have_current_path("/users/#{assoc_user.id}")
  end
end
