require 'spec_helper'

describe UsersController do
  describe 'get index' do
    it 'status 200 with template' do
      get :index
      expect(response.status).to eq(200)
      expect(response).to render_template('index')
    end
  end

  describe 'get show' do
    let(:user) { FactoryGirl.create(:user) }
    it 'status 200 with template' do
      get :show, id: user.id
      expect(response.status).to eq(200)
      expect(response).to render_template('show')
    end

    it 'assigns @user' do
      get :show, id: user.id
      expect(assigns[:user]).to eq(user)
    end
  end
end
