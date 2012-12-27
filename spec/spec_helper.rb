require 'rubygems'
require 'bundler/setup'
require 'rspec'
require File.expand_path('../../lib/unindentable', __FILE__)

RSpec.configure do |c|
  c.mock_with :rspec
end
