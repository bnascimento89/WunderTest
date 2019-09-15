require 'active_model_serializers'
require 'byebug'
require 'cucumber'
require 'data_magic'
require 'httparty'
require 'json'
require 'jsonpath'
require 'json-schema'
require 'rspec'
require 'rspec/expectations'

require 'support/helpers'
require 'model/employee'

include Helpers

DATA_MAGIC_DIRECTORY = '../support/data'