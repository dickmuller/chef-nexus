require 'chef/nexus'
require "#{File.dirname(__FILE__)}/../../../config.rb"

nexus 'chef-nexus rspec test' do
  nexus_url NEXUS_URL
  nexus_repo NEXUS_REPO
  nexus_auth NEXUS_AUTH
  use_auth USE_AUTH

  upload_pom false

  coordinates 'chef-nexus-rspec-test:artifact:1.0.1'
  packaging 'pkg'
  local_file '/tmp/chef_nexus_rspec_temp/no_extension'
  action :upload
end
