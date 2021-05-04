require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do

    context "given first_name, last_name, email, password, and password_confirmation" do
      it "saves successfully" do
        @user = User.create(first_name: "Kato", last_name: "Potato", email: "kato@email.ca", password: "password", password_confirmation: "password")
        expect(User.count).to eq(1)
        expect(@user.errors.full_messages.length).to eq(0)
      end
    end

    context "create user without giving first_name" do
      it "does not save & has error 'First name can't be blank'" do
        @user = User.create(first_name: nil, last_name: "Potato", email: "kato@email.ca", password: "password", password_confirmation: "password")
        expect(User.count).to eq(0)
        expect(@user.errors.full_messages).to include("First name can't be blank")
      end
    end

    context "create user without giving last_name" do
      it "does not save & has error 'Last name can't be blank'" do
        @user = User.create(first_name: "Kato", last_name: nil, email: "kato@email.ca", password: "password", password_confirmation: "password")
        expect(User.count).to eq(0)
        expect(@user.errors.full_messages).to include("Last name can't be blank")
      end
    end

    context "create user without giving email" do
      it "does not save and has error 'Email can't be blank'" do
        @user = User.create(first_name: "Kato", last_name: "Potato", email: nil, password: "password", password_confirmation: "password")
        expect(User.count).to eq(0)
        expect(@user.errors.full_messages).to include("Email can't be blank")
      end
    end

    context "create user without giving password" do
      it "does not save and has error 'Password can't be blank'" do
        @user = User.create(first_name: "Kato", last_name: "Potato", email: "kato@email.ca", password: nil, password_confirmation: "password")
        expect(User.count).to eq(0)
        expect(@user.errors.full_messages).to include("Password can't be blank")
      end
    end

    context "create user without giving password_confirmation" do
      it "does not save and has error 'Password confirmation can't be blank'" do
        @user = User.create(first_name: "Kato", last_name: "Potato", email: "kato@email.ca", password: "password", password_confirmation: nil)
        expect(User.count).to eq(0)
        expect(@user.errors.full_messages).to include("Password confirmation can't be blank")
      end
    end

    context "given a case insensitive duplicate email" do
      it "does not save & has error 'Email has already been taken'" do
        @user1 = User.create(first_name: "Kato", last_name: "Potato", email: "KATO@email.ca", password: "password", password_confirmation: "password")
        @user2 = User.create(first_name: "Kato", last_name: "Potato", email: "kato@email.ca", password: "password", password_confirmation: "password")
        expect(User.count).to eq(1)
        expect(@user2.errors.full_messages).to include("Email has already been taken")
      end
    end

  end
end
