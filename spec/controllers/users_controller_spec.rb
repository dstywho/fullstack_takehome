require 'spec_helper'

describe UsersController do
  describe 'get index' do
    it 'status 200 with template' do
      get :index
      expect(response.status).to eq(200)
      expect(response).to render_template('index')
    end

    let!(:users) { FactoryGirl.create_list(:user, 12) }
    it 'assigns @users by paginates_per 10' do
      get :index, page: 2
      expect(assigns[:users]).to match_array(User.last(2))
      expect(assigns[:users].count).to eq(2)
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
