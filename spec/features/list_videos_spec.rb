require 'spec_helper'

feature 'list videos' do
  scenario 'click a video to the show page' do
    videos = create_list(:video, 3)

    visit '/videos'

    video = videos.first
    click_link "video_#{video.id}"

    expect(page).to have_current_path("/videos/#{video.id}")
  end
end
