require 'spec_helper'

describe HomeController do
  describe 'GET #overview' do
    before :each do
      get :overview
    end

    it 'should assign @topics' do
      expect(assigns(:topics)).to_not be_nil
    end

    it 'should assign @statuses' do
      expect(assigns(:statuses)).to_not be_nil
    end
  end
end
