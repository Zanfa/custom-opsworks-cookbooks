require 'json'

template "/home/ubuntu/ips" do
  source "ips.erb"
  mode 777
  owner "ubuntu"
  variables({
    :json => node[:opsworks].to_json
  })
end
  