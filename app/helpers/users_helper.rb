module UsersHelper
def setup_user(user)
	user.address ||= Addres.new
	user
end


end
