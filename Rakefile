# -*- ruby -*-

require 'rubygems'
require 'hoe'
gem 'rake-compiler', '>= 0.4.1'
require "rake/extensiontask"

name = 'neversaydie'
HOE = Hoe.spec name do
  developer('Aaron Patterson', 'aaronp@rubyforge.org')
  self.readme_file   = ['README', ENV['HLANG'], 'rdoc'].compact.join('.')
  self.history_file  = ['CHANGELOG', ENV['HLANG'], 'rdoc'].compact.join('.')
  self.extra_rdoc_files  = FileList['*.rdoc']
  spec_extras[:extensions] = "ext/neversaydie/extconf.rb"
  self.rubyforge_name = 'seattlerb'
end

RET = Rake::ExtensionTask.new(name, HOE.spec) do |ext|
  ext.lib_dir = File.join('lib', name)
end

# vim: syntax=ruby
