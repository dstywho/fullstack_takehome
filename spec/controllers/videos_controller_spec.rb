require 'spec_helper'

describe VideosController do
  describe 'get index' do
    it 'status code 200 with template' do
      get :index
      expect(response.status).to eq(200)
      expect(response).to render_template('index')
    end

    let(:videos) { FactoryGirl.create_list(:video, 2) }
    it 'assigns @videos' do
      get :index
      expect(assigns[:videos]).to eq(videos)
    end
  end

  describe 'get show' do
    let(:video) { FactoryGirl.create(:video) }
    it 'status code 200 with template' do
      get :show, id: video.id
      expect(response.status).to eq(200)
      expect(response).to render_template('show')
    end

    it 'assigns @video' do
      get :show, id: video.id
      expect(assigns[:video]).to eq(video)
    end
  end
end
