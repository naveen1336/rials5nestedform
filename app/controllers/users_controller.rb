class UsersController < ApplicationController
  def index
  @users = User.all

  end

  def new
    @use = User.new

    # @use.licenses.build
   
  end

  def create
  	@user = User.create(params[:name])
  	# if @user.save
  		render plain: "naveen created#{@user}"
      # p "    ============#{params[:user].inspect}==================="
      license = @user.licenses.create(number: params[:user][:license][:number] ,state: params[:user][:license][:state] )
    # else
    # 	render plain: "not created"
    # end
  end
private
 
 def perparams
  # byebug
  params.require(:user).permit(:name,:licenses_attributes=>[:number , :state])
 end
end
