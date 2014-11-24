require 'rails_helper'

RSpec.describe OrdersController, :type => :controller do
  render_views

  before do
    get :index, format: :json
  end

  context 'all orders' do
    it 'returns the orders' do
      @orders = (1..5).collect { FactoryGirl(:order) }
      expect(json.collect{ |order| l[""]}).to include(@)
    end
  end
end
