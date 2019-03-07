property :db_name, String, name_property: true
property :db_user, String
property :db_host, String
property :db_password, String

default_action :create

action :create do
	directory '/etc/secrets' do
	  owner 'root'
	  group 'root'
	  mode '0755'
	  action :create
	  recursive true
	end

	template "/etc/secrets/db.conf" do
	  source "db_secrets.erb"
	  owner "root"
	  group "root"
	  mode "644"
	  variables :name => new_resource.db_name, :user => new_resource.db_user, :password => new_resource.db_password, :hostname => new_resource.db_host
	end
end
