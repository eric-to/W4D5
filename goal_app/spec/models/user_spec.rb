# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  username        :string           not null
#  password_digest :string           not null
#  session_token   :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'rails_helper'

RSpec.describe User, type: :model do
  subject(:god) { FactoryBot.create(:user) }
  
  it "password is not stored in database" do
    user = User.find_by(username: god.username)
    
    expect(user.password).to be(nil)
  end
  
  describe "validates username, password, session_token" do 
    it {should validate_presence_of :username }
    it {should validate_uniqueness_of :username }
    it { should validate_length_of(:password).is_at_least(6) }
    it {should validate_presence_of :password_digest }
  end
  
  describe "i run last" do
    it "validates presence of session_token" do
      expect(god.session_token).not_to be(nil)
    end
  end
  
  describe "Able to find user by credentials" do
    it "finds user by credentials" do
      user = User.find_by_credentials(god.username, god.password)
      expect(user.username).to eq(god.username)
    end
  end
end
