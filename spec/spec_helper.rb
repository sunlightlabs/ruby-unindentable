require 'rubygems'
require 'bundler/setup'
require 'rspec'
require File.expand_path('../../lib/unindentable', __FILE__)

Rspec.configure do |c|
  c.mock_with :rspec
end
