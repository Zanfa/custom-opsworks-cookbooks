# template "/home/ubuntu/ips" do
#   source "ips.erb"
#   mode 777
#   owner "ubuntu"
#   variables({
#     :opsworks => node[:opsworks]
#   })
# end
  
  
node[:opsworks][:layers][:db-master][:instances].each do |instance_name, instance|
 template instance_name do
   source "ip.erb"
   variables( :ip =>instance[:private_ip] )
 end
end