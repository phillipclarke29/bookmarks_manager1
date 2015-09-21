require 'data_mapper'
require_relative '../spec/spec_helper'

# env = ENV['RACK_ENV'] || 'development'

DataMapper.setup(:default, "postgres://localhost/bookmark_manager_development")

require './app/models/link'

DataMapper.finalize

DataMapper.auto_upgrade!
