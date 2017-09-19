require_relative '../lib/doublemap_api.rb'

DoubleMap.configure do |config|
  config.base_uri     = 'http://citybus.doublemap.com/'
  config.adapter      = :httparty
  config.debug_output = false
end

double_map = DoubleMap.new

r = double_map.routes.list.first
v = double_map.vehicles.list.first
puts double_map.routes.get(v.route).name

r.stops.each do |stop_id|
  puts double_map.stops.get(stop_id).name
end

require 'pry'; binding.pry
puts 'exit'
