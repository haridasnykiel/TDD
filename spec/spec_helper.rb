require 'rspec'
# require 'date'
require './application'

RSpec.configuration do|config|
  config.color = true
  config.tty = true
  config.formatter = :documentation
end
