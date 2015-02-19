require 'rails_helper'

RSpec.describe CompaniesController, type: :controller do
	describe 'GET #index' do
		before { get :index }
		it { should render_template('index') }
	end

	describe CompaniesController do
		it { should route(:get, '/companies').to(action: :index) }
		it { should route(:get, '/companies/1').to(action: :show, id: 1)}
	end

	describe 'GET #new' do
		before { get :new }
		it { should render_template('new') }
	end

end

