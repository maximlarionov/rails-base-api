RSpec::Matchers.define :be_an_error_representation do |error|
  match do |json|
    expect(json).to be
    expect(json).to include('error')
    expect(json['error']['status']).to eq(error.status)
    expect(json['error']['error']).to eq(error.error)
  end
end
