require 'rails_helper'

RSpec.describe UsersController, type: :controller do
	describe 'GET #index' do
		before { get :index }
		it { should render_template('index') }
	end

	describe UsersController do
		it { should route(:get, '/users').to(action: :index) }
		it { should route(:get, '/users/1').to(action: :show, id: 1)}
	end

	describe 'GET #new' do
		before { get :new }
		it { should render_template('new') }
	end

end
