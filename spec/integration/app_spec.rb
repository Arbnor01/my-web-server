require "spec_helper"
require "rack/test"
require_relative '../../app.rb'

describe Application do
  include Rack::Test::Methods

  let(:app) { Application.new }

  context "GET /names" do
    it 'returns 200 OK' do
      response = get('/names')

      expect(response.status).to eq(200)
      expect(response.body).to eq("Julia, Mary, Karim")
    end
  end

  context "POST /sort-names" do
    it 'returns sorted list of names' do
      names = "Joe,Alice,Zoe,Julia,Kieran"
      expected_response = "Alice,Joe,Julia,Kieran,Zoe"

      post('/sort-names', names: names)

      expect(last_response.status).to eq(200)
      expect(last_response.body).to eq(expected_response)
    end
  end
end