#!/usr/bin/env ruby
require 'json'

data = JSON.parse(coverage.json)
instance_id = data["totals"]["percent_covered"]
echo $instance_id