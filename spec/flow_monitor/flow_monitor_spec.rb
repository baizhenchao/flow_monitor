#!/usr/bin/env ruby
require 'spec_helper'

describe Flow_Monitor do
  include Rack::Test::Methods
  def app
    Flow_Monitor
  end

  it "should get hello" do
    get "/"
    expect(last_response.body).to eq "hello"
  end
end
