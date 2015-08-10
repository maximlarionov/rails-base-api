require 'rails_helper'

describe ErrorSerializer do
  let(:error) { Error.new(code: :bad_request) }
  let(:json) { ErrorSerializer.new(error).to_json }

  subject(:parsed_json) { parse_json(json) }

  it 'include "error" root element' do
    expect(parsed_json).to include('error')
  end

  it 'include error representation' do
    expect(parsed_json['error']).to be_an_error_representation(error)
  end
end
