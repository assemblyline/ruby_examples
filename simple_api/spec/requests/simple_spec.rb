require 'spec_helper'
require 'api'
require 'rack/test'
require 'json'

describe API do
  include Rack::Test::Methods

  def app
    described_class
  end

  describe 'GET /hello' do
    it 'returns a nice response' do
      get '/hello'
      expect(last_response.status).to eq(200)
      expect(JSON.parse(last_response.body)).to eq('hello' => 'world')
    end
  end
end
