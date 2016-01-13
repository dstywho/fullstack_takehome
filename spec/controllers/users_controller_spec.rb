require 'spec_helper'

describe UsersController do
  describe 'get index' do
    it 'status 200' do
      get :index
      expect(response.status).to eq(200)
      expect(response).to render_template('index')
    end
  end
end
