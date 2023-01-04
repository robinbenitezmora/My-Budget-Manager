# This file is used by Rack-based servers to start the application. # rubocop:todo Layout/EndOfLine

require_relative 'config/environment'

run Rails.application
Rails.application.load_server
