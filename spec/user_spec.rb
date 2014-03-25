require 'spec_helper'

    describe User do 

        user = User.new

        it "User name should be Bob" do
            expect(user.name).to eq 'Bob'
        end

        it "User role should include admin" do
            expect(user.roles).to include('admin')
        end

        it "User's postcode should be WC1 8CD" do
            
            user.postcode = 'WC1 8CD'
            expect(user.postcode).to eq 'WC1 8CD'
        end

        it "User role should be admin" do
            expect(user).to be_admin
        end

        it "User - empty param raises error" do
            expect{user.add_role()}.to raise_error
        end


            it {should respond_to(:age)}
            it {should respond_to(:name)}
            it {should respond_to(:roles)}
            it {should respond_to(:postcode)}
        

 end