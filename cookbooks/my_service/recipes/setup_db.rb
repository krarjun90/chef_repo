log "Environment, #{node.environment}!" do
  level :info
end

config = data_bag_item(node.environment, 'db_secrets')

log "data_bag_item, #{config}!" do
  level :info
end

unless config.nil?
	node.force_override['db']['name'] = config['db_name']
	node.force_override['db']['user'] = config['db_user']
	node.force_override['db']['password'] = config['db_password']
	node.force_override['db']['host'] = config['db_host']
end

include_recipe 'database'
