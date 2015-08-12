require 'rails_helper'
require 'rspec_api_documentation/dsl'

resource 'Errors' do
  header 'Accept', 'application/json'

  subject(:response) { json_response_body }

  get '/not-found' do
    example_request 'Request to unexisting page' do
      error = ApiFormat::Error.new(status: '404', error: 'Not Found')

      expect(response_status).to eq 404
      expect(response['error']).to be_an_error_representation(error)
    end
  end
end
