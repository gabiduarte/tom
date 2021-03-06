require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  describe "POST #create" do
    let(:user) { JSON.parse(response.body) }
    it "returns http success" do
      post :create
      expect(response).to have_http_status(:success)
    end
    it "stores a new user in the database"do
      expect {
        post :create
      }.to change(User, :count)
    end
    it "returns an user with an id" do
      post :create
      expect(user['id']).to be_an(String)
    end
    it "returns an anonymous user" do
      post :create
      expect(user['anonymous']).to eq(true)
    end
    it "returns an encrypted id" do
      post :create
      expect(User.exists?(id: user['id'])).to eq(false)
    end
  end

  describe "PATCH #update" do
    it "updates user data and mark it as completed" do
      user1 = create(:user)
      industry = create(:industry)
      role = create(:role)
      patch :update, id: ApplicationHelper::encrypt(user1.id),
                   name: 'abc',
                   email: 'dev@tw.com',
                   #company: 'tw',
                   industry_id: industry.id,
                   role_id: role.id
      user2 = User.find(user1.id)
      expect(user2.name).to eq('abc')
      expect(user2.email).to eq('dev@tw.com')
      expect(user2.company).to eq(user1.company)
      expect(user2.industry_id).to eq(industry.id)
      expect(user2.role_id).to eq(role.id)
      expect(user2.completed).to eq(true)
      expect(response).to have_http_status(:success)
    end
  end

end
