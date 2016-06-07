#!/usr/bin/env ruby
require 'sinatra'
require 'httparty'
require 'yaml'

CONFIG = YAML.load_file(File.expand_path('../config.yml', __FILE__))

get '/__proxy__' do
  content_type 'text/plain'
  return 'AUTH ERROR' unless CONFIG[:keys].include? params[:key] 
  begin
    HTTParty.get(params[:url]).body
  rescue => e
    e.message
  end
end
