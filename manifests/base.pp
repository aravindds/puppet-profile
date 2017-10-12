class profile::base(
  $ntp_servers = [                       #### Defining the variables
    '0.ubuntu.pool.ntp.org',
    '1.ubuntu.pool.ntp.org',
  ],
) {
    class { '::ntp':
      servers => $ntp_servers,
    }
if $facts['os']['family'] == 'RedHat' {
      include ::profile::selinux
    }

}
