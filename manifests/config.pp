class ntp::config(
  String $config_name      = $ntp::config_name,
  String $config_file_mode = $ntp::config_file_mode,
  Array[String] $severs    = $ntp::severs,
) {
  file { "/etc/${config_name}":
    ensure => file,
    owner  => 0,
    grup   => 0,
    mode   => $config_file_mode,
    content => template("$module_name/ntp.conf.erb")
  }
}
