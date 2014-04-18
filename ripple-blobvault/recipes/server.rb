include_recipe 'ripple-blobvault::default'

configuration = node['ripple']['blobvault']['server']
database_configuration = configuration['db']
email_configuration = configuration['email']
pakdf_configuration = configuration['default_pakdf_setting']
authinfo_configuration = configuration['authinfo']

application "ripple-blobvault" do
  path "/srv/ripple-blobvault"
  owner "www-data"
  group "www-data"

  packages ['git']

  repository configuration['repository']
  revision configuration['revision']

  nodejs do
    npm
    template "nodejs.upstart.conf.erb"
    entry_point "server.js"
  end

  before_deploy do

    execute "npm install forever -g"

    template "/srv/ripple-blobvault/shared/config.js" do
      source 'config.js.erb'
      owner 'root'
      group 'www-data'
      mode "0640" # owner read/write, group read, world none
      variables({
        :config => {
          :host => configuration['host'],
          :port => configuration['port'],
          :url => configuration['url'],
          :ssl => configuration['ssl'],
          :is_proxy => configuration['is_proxy'],
          :dbtype => database_configuration['type'],
          :database => {
              database_configuration['type'] => {
                  :host => database_configuration['host'],
                  :port => database_configuration['port'],
                  :user => database_configuration['user'],
                  :password => database_configuration['password'],
                  :database => database_configuration['database_name'],
                  :charset => database_configuration['charset']
              }
          },
          :email => {
              :user => email_configuration['user'],
              :password => email_configuration['pass'],
              :host => email_configuration['host'],
              :port => email_configuration['port'],
              :from => email_configuration['from']
          },
          :defaultPakdfSetting => {
              :host => pakdf_configuration['host'],
              :url => pakdf_configuration['url'],
              :exponent => pakdf_configuration['exponent'],
              :modulus => pakdf_configuration['modulus'],
              :alpha => pakdf_configuration['alpha']
          },
          :reserved => configuration['reserved'],
          :AUTHINFO_VERSION => authinfo_configuration['version']
        }
      })
    end

  end

  symlinks({
    "config.js" => "config.js"
  })
end
