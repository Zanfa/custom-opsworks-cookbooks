# template "/home/ubuntu/ips" do
#   source "ips.erb"
#   mode 777
#   owner "ubuntu"
#   variables({
#     :opsworks => node[:opsworks]
#   })
# end
  
require "json"
  
# .each do |instance_name, instance|
 template "/home/ubuntu/ips" do
   source "ips.erb"
   owner "ubuntu"
   variables( 
     json: node[:opsworks][:layers][:jsontest][:instances].to_json,
     instaces: node[:opsworks][:layers][:jsontest][:instances]
   )
 end
# end