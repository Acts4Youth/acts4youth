require 'rails_helper'

RSpec.describe PagesController, :type => :controller do

  describe "GET index" do
    it 'assigns all events to @events' do
      get :index
      expect(assigns(:events)).to eq(Event.all)
    end

    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET fundraising" do
    it "returns http success" do
      get :fundraising
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET volunteering_partnerships" do
    it "returns http success" do
      get :volunteering_partnerships
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET success_stories" do
    it "returns http success" do
      get :success_stories
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET staff_students" do
    it "returns http success" do
      get :staff_students
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET values" do
    it "returns http success" do
      get :values
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET programming" do
    it "returns http success" do
      get :programming
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET donate" do
    it "returns http success" do
      get :donate
      expect(response).to have_http_status(:success)
    end
  end

end
