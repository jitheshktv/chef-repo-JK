default['ems-install']['install']['group'] = 'tibesb'
default['ems-install']['install']['user'] = 'tibesb'

default['ems-install']['install']['tibco_home_name'] = 'TIBCO_HOME'
default['ems-install']['install']['tibco_home_dir'] = '/apps/tibco'
default['ems-install']['install']['ems_install_dir'] = '/apps/tibco/ems'
default['ems-install']['install']['ems_log_dir'] = '/logs/tibco/ems'
default['ems-install']['config']['ems_config_dir'] = '/apps/tibco/config/ems'

default['ems-install']['install']['linux_bin_source'] = 'https://s3-us-west-2.amazonaws.com/ems-8.2.2-bin/linux/TIB_ems_8.2.2_linux_x86.zip'
default['ems-install']['install']['ems_bin_target_path'] = '/tmp/ems'
default['ems-install']['install']['linux_bin_zip'] = 'TIB_ems_8.2.2_linux_x86.zip'

default['ems-install']['install']['linux_bin'] = 'TIBCOUniversalInstaller-lnx-x86.bin'
default['ems-install']['install']['response_file'] = 'emsInstallResponseFile.silent'

default['java']['install_flavor'] = 'oracle'
default['java']['jdk_version'] = '8'
default['java']['java_home'] = '/opt/jre'
default['java']['set_etc_environment'] = 'true'
default['java']['oracle']['accept_oracle_download_terms'] = 'true'
