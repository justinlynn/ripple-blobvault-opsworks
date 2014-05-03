default['ripple']['blobvault']['server']['host'] = nil
default['ripple']['blobvault']['server']['port'] = 5993
default['ripple']['blobvault']['server']['url'] = "http://localhost"
default['ripple']['blobvault']['server']['ssl'] = false
default['ripple']['blobvault']['server']['is_proxy'] = false
default['ripple']['blobvault']['server']['quota'] = 1024
default['ripple']['blobvault']['server']['patchsize'] = 1
default['ripple']['blobvault']['server']['testmode'] = false
default['ripple']['blobvault']['server']['nolimit_date'] = 'Thu May 1 2014'
default['ripple']['blobvault']['server']['url_prefix'] = ''
default['ripple']['blobvault']['server']['username_length'] = 20

default['ripple']['blobvault']['server']['repository'] = 'git://github.com/ripple/ripple-blobvault.git'
default['ripple']['blobvault']['server']['revision'] = 'master'

default['ripple']['blobvault']['server']['db']['type'] = 'postgres'
default['ripple']['blobvault']['server']['db']['user'] = 'CHANGEME'
default['ripple']['blobvault']['server']['db']['password'] = 'CHANGEME'
default['ripple']['blobvault']['server']['db']['host'] = 'localhost'
default['ripple']['blobvault']['server']['db']['port'] = 5984
default['ripple']['blobvault']['server']['db']['database_name'] = 'CHANGEME'
default['ripple']['blobvault']['server']['db']['charset'] = 'utf8'

default['ripple']['blobvault']['server']['email']['host'] = 'localhost'
default['ripple']['blobvault']['server']['email']['port'] = 25
default['ripple']['blobvault']['server']['email']['user'] = ''
default['ripple']['blobvault']['server']['email']['pass'] = ''
default['ripple']['blobvault']['server']['email']['from'] = 'localhost-dev@localhost'

default['ripple']['blobvault']['server']['authinfo']['version'] = 3

default['ripple']['blobvault']['server']['default_pakdf_setting']['host'] = "auth1.ripple.com"
default['ripple']['blobvault']['server']['default_pakdf_setting']['url'] = "https://auth1.ripple.com/api/sign"
default['ripple']['blobvault']['server']['default_pakdf_setting']['exponent'] = "010001"
default['ripple']['blobvault']['server']['default_pakdf_setting']['alpha'] = "7283d19e784f48a96062271a4fa6e2c3addf14e6edf78a4bb61364856d580f13552008d7b9e3b60ebd9555e9f6c7778ec69f976757d206134e54d61ba9d588a7e37a77cf48060522478352d76db000366ef669a1b1ca93c5e3e05bc344afa1e8ccb15d3343da94180dccf590c2c32408c3f3f176c8885e95d988f1565ee9b80c12f72503ab49917792f907bbb9037487b0afed967fefc9ab090164597fcd391c43fab33029b38e66ff4af96cbf6d90a01b891f856ddd3d94e9c9b307fe01e1353a8c30edd5a94a0ebba5fe7161569000ad3b0d3568872d52b6fbdfce987a687e4b346ea702e8986b03b6b1b85536c813e46052a31ed64ec490d3ba38029544aa"
default['ripple']['blobvault']['server']['default_pakdf_setting']['modulus'] = "c7f1bc1dfb1be82d244aef01228c1409c198894eca9e21430f1669b4aa3864c9f37f3d51b2b4ba1ab9e80f59d267fda1521e88b05117993175e004543c6e3611242f24432ce8efa3b81f0ff660b4f91c5d52f2511a6f38181a7bf9abeef72db056508bbb4eeb5f65f161dd2d5b439655d2ae7081fcc62fdcb281520911d96700c85cdaf12e7d1f15b55ade867240722425198d4ce39019550c4c8a921fc231d3e94297688c2d77cd68ee8fdeda38b7f9a274701fef23b4eaa6c1a9c15b2d77f37634930386fc20ec291be95aed9956801e1c76601b09c413ad915ff03bfdc0b6b233686ae59e8caf11750b509ab4e57ee09202239baee3d6e392d1640185e1cd"

default['ripple']['blobvault']['server']['email']['port'] = 25
default['ripple']['blobvault']['server']['email']['user'] = ''
default['ripple']['blobvault']['server']['email']['pass'] = ''
default['ripple']['blobvault']['server']['email']['from'] = 'localhost-dev@localhost'
