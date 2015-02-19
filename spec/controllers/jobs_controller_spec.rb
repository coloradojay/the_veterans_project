require 'rails_helper'

RSpec.describe JobsController, type: :controller do

	describe 'GET #index' do
		before { get :index }
		it { should render_template('index') }
	end

	describe JobsController do
		it { should route(:get, '/jobs').to(action: :index) }
	end

end
