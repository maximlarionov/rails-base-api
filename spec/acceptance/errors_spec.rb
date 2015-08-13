require 'rails_helper'
require 'rspec_api_documentation/dsl'

resource 'Errors' do
  header 'Accept', 'application/json'

  subject(:response) { json_response_body }

  get '/not-found' do
    example_request 'Request to unexisting page' do
      error = RailsApiFormat::Error.new(status: :not_found, error: 'Not Found')

      expect(response_status).to eq 404
      expect(response).to be_an_error_representation(error)
    end
  end
end
