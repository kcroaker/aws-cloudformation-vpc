template "test-VirtualLabs-AppNetwork-vpc-v1.json" do
  env,busunit,app,role,ver = name.sub('.json','').split('-')
  source "virtuallabs-appnetwork-vpc.json.erb"
  variables(
    :account => "768621140189",
    :region => "ap-southeast-2",
    :business_unit => busunit,
    :environment => env,
    :stack_name => app,
    :stack_role => role,
    :stack_version => ver,
    :vpc_cidr => "10.1.0.0/21",
    :presentation_subnet_a_cidr => "10.1.1.0/24",
    :presentation_subnet_b_cidr => "10.1.2.0/24",
    :application_subnet_a_cidr => "10.1.3.0/24",
    :application_subnet_b_cidr => "10.1.4.0/24",
    :data_subnet_a_cidr => "10.1.5.0/24",
    :data_subnet_b_cidr => "10.1.6.0/24",
    :routing_nested_stack_location => "[[[bucket]]]/routing/test-VirtualLabs-AppNetwork-routing-v1.json",
    :subnet_nested_stack_location => "[[[bucket]]]/subnet/test-VirtualLabs-AppNetwork-subnet-v1.json",
    :nacls_nested_stack_location => "[[[bucket]]]/nacls/test-VirtualLabs-AppNetwork-nacls-v1.json"
  )
end
