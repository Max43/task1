require 'spec_helper'
require_relative '../../../../apps/web/views/orders/new'

describe Web::Views::Orders::New do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Lotus::View::Template.new('apps/web/templates/orders/new.html.erb') }
  let(:view)      { Web::Views::Orders::New.new(template, exposures) }
  let(:rendered)  { view.render }

  it "exposes #foo" do
    expect(view.foo).to eq exposures.fetch(:foo)
  end
end
