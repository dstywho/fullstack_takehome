require 'spec_helper'

describe DashboardController do
  describe 'get index' do
    it 'status 200 with template' do
      get :index
      expect(response.status).to eq(200)
      expect(response).to render_template('index')
    end
  end
end
