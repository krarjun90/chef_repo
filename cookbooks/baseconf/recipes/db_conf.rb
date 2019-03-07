baseconf_db_secrets node['db']['name'] do
	db_user node['db']['user']
	db_password node['db']['password']
	db_host node['db']['host']
end
