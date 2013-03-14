#
# Cookbook Name:: harakiri_chef
# Recipe:: default
#
# Copyright 2012, Strands Labs
#

case node['platform']
when "debian"

  bash "harakiri_chef" do
    code <<-EOF
      /etc/init.d/chef-client stop
      update-rc.d chef-client disable
    EOF
    only_if { ::File.exists?("#{node["harakiri_chef"]["pidfile"]}") }
  end

when "centos"

  bash "harakiri_chef" do
    code <<-EOF
      /etc/init.d/chef-client stop
      chkconfig --level 0123456 chef-client off
    EOF
    only_if { ::File.exists?("#{node["harakiri_chef"]["pidfile"]}") }
  end

end
