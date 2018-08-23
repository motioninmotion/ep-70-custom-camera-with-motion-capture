# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
$:.unshift("~/.rubymotion/rubymotion-templates")

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
  app.info_plist['NSCameraUsageDescription'] = 'Camera will be used for taking your profile photo.'
end
