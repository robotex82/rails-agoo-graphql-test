require 'rails_helper'

RSpec.describe '/backend/graphql' do
  let(:base_path) { '/backend/graphql' }
  let(:query_string) { URI.encode('query={hello}') }

  let(:parsed_response_body) { JSON.parse(response.body) }

  before(:each) do
    get "#{base_path}?#{query_string}"
  end

  it { expect(parsed_response_body).to be_a(Hash) }
  it { expect(parsed_response_body.dig('data', 'hello')).to eq('Hello World from the Backend!') }
end
