require 'spec_helper'

describe User do
  let(:video) { FactoryGirl.create(:video) }
  it 'should respond to users' do
    expect(video).to respond_to(:users)
  end

  it 'should be associated with users' do
    associated_user = video.users.build
    expect(associated_user).to be_valid
  end
end
