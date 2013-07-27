# template "/home/ubuntu/ips" do
#   source "ips.erb"
#   mode 777
#   owner "ubuntu"
#   variables({
#     :opsworks => node[:opsworks]
#   })
# end
  
  
# .each do |instance_name, instance|
 template "/home/ubuntu/ips" do
   source "ips.erb"
   variables( 
     instaces: node[:opsworks][:layers][:jsontest][:instances]
   )
 end
# end