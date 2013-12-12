require_relative '../app/models/user.rb'

describe "User model" do
	
	before :each do
		@user = User.create(first_name:"Rob", last_name:"Banks", email:"mole@bigbank.com", bday:"2001-02-03 04:05:06", location:"Somewhere", new_password:"supersecretpass", new_password_confirmation:"supersecretpass", last_login:"2013-12-11 10:09:08")
	end

	describe "#new" do
		
		id "takes 8 parameters and returns a User object" do
			@user.should be_an_instance_of User
		end

	end

end