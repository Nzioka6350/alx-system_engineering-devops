# Puppet Manifest to Execute a Command

# Description: This manifest uses the exec resource to kill a process named 'killmenow' using pkill.

exec { 'killmenow':
  command => 'pkill -f killmenow',
  onlyif  => 'pgrep -f killmenow',
  path    => '/usr/bin:/bin',
}
