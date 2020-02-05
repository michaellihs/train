# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "train/version"

Gem::Specification.new do |spec|
  spec.name          = "train"
  spec.version       = Train::VERSION
  spec.authors       = ["Dominik Richter"]
  spec.email         = ["drichter@chef.io"]
  spec.summary       = "Transport interface to talk to different backends."
  spec.description   = "Transport interface to talk to different backends."
  spec.license       = "Apache-2.0"

  spec.metadata = {
    "homepage_uri" => "https://github.com/inspec/train",
    "changelog_uri" => "https://github.com/inspec/train/blob/master/CHANGELOG.md",
    "source_code_uri" => "https://github.com/inspec/train",
    "bug_tracker_uri" => "https://github.com/inspec/train/issues",
  }

  spec.files = %w{LICENSE} + Dir.glob("lib/**/*", File::FNM_DOTMATCH).reject { |f| File.directory?(f) }

  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.required_ruby_version = ">= 2.4"

  spec.add_dependency "json", ">= 1.8", "< 3.0"
  spec.add_dependency "mixlib-shellout", ">= 2.0", "< 4.0"
  spec.add_dependency "net-ssh", ">= 2.9", "< 6.0"
  spec.add_dependency "net-scp", ">= 1.2", "< 3.0"
  spec.add_dependency "docker-api", "~> 1.26"
  # spec.add_dependency "azure_mgmt_resources", git: 'https://github.com/michaellihs/azure-sdk-for-ruby.git'
  # spec.add_dependency "azure_graph_rbac", git: 'https://github.com/michaellihs/azure-sdk-for-ruby.git'
  # spec.add_dependency "azure_mgmt_key_vault", git: 'https://github.com/michaellihs/azure-sdk-for-ruby.git'
  # spec.add_dependency "azure_mgmt_security", git: 'https://github.com/michaellihs/azure-sdk-for-ruby.git'
  # spec.add_dependency "azure_mgmt_storage", git: 'https://github.com/michaellihs/azure-sdk-for-ruby.git'
  spec.add_dependency "activesupport", "~> 5.2.3"
  spec.add_dependency "google-api-client", ">= 0.23.9", "< 0.35.0"
  spec.add_dependency "googleauth", ">= 0.6.6", "< 0.11.0"
  spec.add_dependency "inifile"

  spec.add_development_dependency "mocha", "~> 1.1"
end
