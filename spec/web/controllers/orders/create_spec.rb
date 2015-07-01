require 'spec_helper'
require_relative '../../../../apps/web/controllers/orders/create'

describe Web::Controllers::Orders::Create do
  let(:action) { Web::Controllers::Orders::Create.new }
  let(:params) { Hash[] }

  it "is successful" do
    response = action.call(params)
    expect(response[0]).to eq 200
  end
end
