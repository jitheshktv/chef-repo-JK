default['bw-install']['install']['group'] = 'tibeai'
default['bw-install']['install']['user'] = 'tibeai'
default['bw-install']['config']['group'] = 'sgsup'
default['bw-install']['config']['user'] = 'esbuser'

default['bw-install']['install']['tibco_home_name'] = 'TIBCO_EAI_HOME'
default['bw-install']['install']['tibco_home_dir'] = '/apps/tibco'
default['bw-install']['install']['logs_home_dir'] = '/logs/tibco'
default['bw-install']['install']['bw_install_dir'] = '/apps/tibco/eai'
default['bw-install']['install']['bw_home_dir'] = '/apps/tibco/eai/bw'
default['bw-install']['install']['bw_instance_dir'] = '/apps/tibco/domain'
default['bw-install']['install']['logs_instance_dir'] = '/logs/tibco/domain'

default['bw-install']['install']['linux_bin_source'] = 'https://s3-us-west-2.amazonaws.com/bw-6.2.2-bin/linux/TIB_BW_6.2.2_linux26gl23_x86_64.zip'
default['bw-install']['install']['bw_bin_target_path'] = '/tmp/bw'
default['bw-install']['install']['linux_bin_zip'] = 'TIB_BW_6.2.2_linux26gl23_x86_64.zip'

default['bw-install']['install']['linux_bin'] = 'TIBCOUniversalInstaller-lnx-x86-64.bin'
default['bw-install']['install']['response_file'] = 'bwInstallResponseFile.silent'
default['bw-install']['config']['bw_conf_templates_dir'] = '/apps/tibco/eai/bw/6.2/config/templates/conf'
default['bw-install']['install']['bw_agent'] = '/apps/tibco/eai/bw/6.2/bin/bwagent'

default['bw-install']['passwords']['secret_path'] = '/etc/chef/encrypted_data_bag_emsinstall_secret'

default['java']['install_flavor'] = 'oracle'
default['java']['jdk_version'] = '8'
default['java']['java_home'] = '/opt/jre'
default['java']['set_etc_environment'] = 'true'
default['java']['oracle']['accept_oracle_download_terms'] = 'true'
