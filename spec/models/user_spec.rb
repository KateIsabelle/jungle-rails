require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do

    context "given first name, last name, password, and password confirmation" do
      it "saves successfully" do
        @user = User.create(first_name, last_name, password: "password", password_confirmation)
        expect(Product.count).to eq(1)
        expect(@product.errors.full_messages.length).to eq(0)
      end
    end

  end
end
