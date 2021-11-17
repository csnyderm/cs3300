require "rails_helper"

RSpec.describe ProjectsController, type: :controller do

  context "GET #index" do
    it "returns a success response" do
      get :index
      # expect(response.success).to eq(true)
      expect(response).to be_success
    end
  end

  context "GET #show" do
    let!(:project) { Project.create(title: "Test title", description: "Test description") }
    it "returns a success response" do
      get :show, params: { id: project }
      expect(response).to be_success
    end
  end

=begin  
  context "GET #new" do
    login_user
    it "returns a success response" do
      get :new
      expect(response).to be_success
    end
  end

  context "POST #projects" do
    login_user
    it "returns a success response" do
      post :create, :params => { :project => { :title => "Any Name" ,:body => "Any Name", :description => "Any Name" } }
      
      #expect(response).to be_success
      expect(Project.count).to eq(1)
    end
  end

  context "POST #projects" do
    login_user
    it "returns a bad response" do
      post :create, :params => { :project => { :title => "" ,:body => "Any Name", :description => "Any Name" } }
    
      #expect(response).to be_success
      expect(Project.count).to eq(0)
    end
  end
=end

end
