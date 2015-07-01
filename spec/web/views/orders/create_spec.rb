require 'spec_helper'
require_relative '../../../../apps/web/views/orders/create'

describe Web::Views::Orders::Create do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Lotus::View::Template.new('apps/web/templates/orders/create.html.erb') }
  let(:view)      { Web::Views::Orders::Create.new(template, exposures) }
  let(:rendered)  { view.render }

  it "exposes #foo" do
    expect(view.foo).to eq exposures.fetch(:foo)
  end
end
