require "rails_helper"

RSpec.describe UsersController, type: :controller do
  describe 'GET #new' do
    it "renders sign up page" do
      get :new
      
      expect(response).to render_template('new')
      expect(response).to have_http_status(200)
    end
  end
  
  describe 'POST #create' do
    context 'Creates user with valid params and redirects to show page' do
      it "creates user" do
        post :create, params: {user: {username: Faker::Seinfeld.character, password: "stupidpassword" } }
        user = User.last
  
        expect(response).to redirect_to(users_url(user))      
      end
    end
  end
end