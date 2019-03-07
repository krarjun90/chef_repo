describe file('/etc/secrets/db.conf') do
  it { should be_file }
  its(:content) do
    should match(/db_name: test_name_databag/)
    should match(/db_user: test_user_databag/)
    should match(/db_password: test_pwd_databag/)
    should match(/db_host: test_host_databag/)
  end
end