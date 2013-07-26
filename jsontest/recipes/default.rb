template "/home/ubuntu/ips" do
  source "ips.erb"
  mode 777
  owner "ubuntu"
  variables({
    :instances => node[:opsworks][:layers][:jsontest][:instances]
  })
end
  