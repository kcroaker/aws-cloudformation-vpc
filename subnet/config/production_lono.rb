template "prod-VirtualLabs-AppNetwork-subnet-v1.json" do
  env,busunit,app,role,ver = name.sub('.json','').split('-')
  source "virtuallabs-appnetwork-vpc-subnet.json.erb"
  variables(
    :business_unit => busunit,
    :environment => env,
    :stack_name => app,
    :stack_role => role,
    :stack_version => ver,
    :vpc_id => "vpc-123456",
    :presentation_subnet_a_cidr => "10.0.0.0/24",
    :presentation_subnet_b_cidr => "10.0.1.0/24",
    :application_subnet_a_cidr => "10.0.2.0/24",
    :application_subnet_b_cidr => "10.0.3.0/24",
    :data_subnet_a_cidr => "10.0.4.0/24",
    :data_subnet_b_cidr => "10.0.5.0/24",
    :network_acls => "holding",
    :route_tables => "holding"
  )
end
