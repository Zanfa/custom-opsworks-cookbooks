template "/home/ubuntu/ips" do
  source "ips.erb"
  mode 777
  owner "ubuntu"
  variables({
    :opsworks => node[:opsworks]
  })
end
  