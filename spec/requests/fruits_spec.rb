require 'rails_helper'

RSpec.describe 'FruitsController', type: :request do
  let(:request_headers) { { 'Content-Type' => 'application/json', 'accept' => 'application/json' } }

  describe '#index' do
    it '200' do
      get "/fruits", headers: request_headers

      assert_request_schema_confirm
      assert_response_schema_confirm(200)
    end
  end

  describe '#create' do
    let(:request_params) { { 'name': "apple" }.to_json }

    xit 'error by assert_response_schema_confirm' do
      post '/fruits', params: request_params, headers: request_headers

      assert_request_schema_confirm
      assert_response_schema_confirm(201)
      #=> Committee::InvalidResponse: #/paths/~1fruits/post/responses/201
      #     response definition does not exist
    end

    it '201' do
      post '/fruits', params: request_params, headers: request_headers

      assert_request_schema_confirm

      # HTTPステータスコードを確認するだけ
      expect(response.status).to eq 201
    end
  end
end