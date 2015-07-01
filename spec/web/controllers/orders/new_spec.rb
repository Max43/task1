require 'spec_helper'
require_relative '../../../../apps/web/controllers/orders/new'

describe Web::Controllers::Orders::New do
  let(:action) { Web::Controllers::Orders::New.new }
  let(:params) { Hash[] }

  it "is successful" do
    response = action.call(params)
    expect(response[0]).to eq 200
  end
end
