require 'rspec'

require './application'

RSpec.configuration do|config|
  config.color = true
  config.tty = true
  config.formatter = :document
end
