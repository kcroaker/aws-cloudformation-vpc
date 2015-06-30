template "dev-VirtualLabs-AppNetwork-nacls-v1.json" do
	env,busunit,app,role,ver = name.sub('.json','').split('-')
	source "virtuallabs-appnetwork-vpc-nacls.json.erb"
	variables(
		:business_unit => busunit,
		:environment => env,
		:stack_name => app,
		:stack_role => role,
		:stack_version => ver,
		:vpc_id => "vpc-123456",
		:vpc_cidr => "10.0.0.0/24"
	)
end
