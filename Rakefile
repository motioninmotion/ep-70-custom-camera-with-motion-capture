# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/ios'

begin
  require 'bundler'
  Bundler.require
rescue LoadError
end

Motion::Project::App.setup do |app|
  app.name = 'MyCamera'
  app.frameworks += ["AVFoundation"]
  app.provisioning_profile = ENV["PROVISIONING_PROFILE"]
end
