require 'spec_helper'

describe User do

	let(:user) { User.new }

	it { should respond_to(:age) }
	it { should respond_to(:name) }
	it { should respond_to(:roles) }
	it { should respond_to(:address) }
	
	it "should return admin" do
		expect(user).to be_admin
	end
2
	it "should return the name 'bob'" do
		expect(user.name).to eq "Bob"
	end

	it "should match the postcode to the address" do
		user.postcode = 'WC1 9XC'
		expect(user.address).to match user.postcode
	end

	it "should return as error if role added is empty" do
		expect { user.add_role() }.to raise_error ArgumentError
	end
end