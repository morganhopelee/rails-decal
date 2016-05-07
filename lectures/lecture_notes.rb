# USERS_CONTROLLERS.RB FILE
def index
	@users = Users.all
end

def show
	# @id = params[:id] #inside the view associated with this method, will change based on what the id param is
	if params[:id].to_i works
		@user = Users.find(params[:id])
	else # it is a string
		@user = User.find_by_name(params[:id])
end
	# in show.html.erb
	# show <%= @user.name %>
	# attempt to find user of id 1, 2, 3, ...

	# <%= link_to user.name, user_path(user) # user is the as: user part in users/:id
	# dynamically generate urls!!!

def new
	@user = User.new name: 'hi' # prepopulates the form (prevents people from doing dummy entries)


def create
	@user = User.new(user_params)
	if @user.save
		redirect_to action: 'index'
	else
		render 'new'
	end
end

private
def user_params
	params.require(:user).permit(:name, :email)
end


# VALIDATIONS
# inside users.rb
validates :name, presence: true
u.errors.message # prints out specific error message

# not sure where this goes
form_for something do |something|
something.text_input :name
something.text_input :username
something.submit

# routes.rb
get 'users', to: 'users#index'
get 'users/new', to: 'users#new'
get 'users/:id', to: 'users#show', as: 'user'
post 'users', to: 'users#create'