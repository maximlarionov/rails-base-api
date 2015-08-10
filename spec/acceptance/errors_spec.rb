require 'rails_helper'
require 'rspec_api_documentation/dsl'

resource 'Errors' do
  subject(:json_response) { json_response_body }

  get '/not-found' do
    example_request 'Request to unexisting page' do
      error = Error.new(code: :unauthorized, message: 'Invalid email or password.')

      expect(response_status).to eq 500
      expect(json_response['error']).to be_an_error_representation(error)
    end
  end
end
