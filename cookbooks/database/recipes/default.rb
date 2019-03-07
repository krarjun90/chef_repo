node.override['db']['name'] = 'test_db_2'
node.override['db']['user'] = 'test_user_2'
node.override['db']['password'] = 'test_pwd_2'
node.override['db']['host'] = 'test_host_2'

include_recipe 'baseconf::db_conf'