# Puppet Configuration Management Project

This project involves creating Puppet manifests for various configuration management tasks. The tasks include creating a file, installing a package, and executing a command using Puppet.

## Table of Contents
1. [Create a File](#create-a-file)
2. [Install a Package](#install-a-package)
3. [Execute a Command](#execute-a-command)

## 1. Create a File <a name="create-a-file"></a>

### Manifest File: `0-create_a_file.pp`

```puppet
# Puppet Manifest to Create a File

# Description: This manifest creates a file in /tmp with specific permissions, owner, group, and content.

file { '/tmp/school':
  ensure  => 'file',
  mode    => '0744',
  owner   => 'www-data',
  group   => 'www-data',
  content => 'I love Puppet',
}
```

**How to Apply:**

```bash
$ puppet-lint 0-create_a_file.pp
$ puppet apply 0-create_a_file.pp
```

## 2. Install a Package <a name="install-a-package"></a>

### Manifest File: `1-install_a_package.pp`

```puppet
# Puppet Manifest to Install Flask Package

# Description: This manifest installs the Flask package using pip3 with a specified version.

package { 'Flask':
  ensure   => '2.1.0',
  provider => 'pip3',
}
```

**How to Apply:**

```bash
$ puppet-lint 1-install_a_package.pp
$ puppet apply 1-install_a_package.pp
```

## 3. Execute a Command <a name="execute-a-command"></a>

### Manifest File: `2-execute_a_command.pp`

```puppet
# Puppet Manifest to Execute a Command

# Description: This manifest uses the exec resource to kill a process named 'killmenow' using pkill.

exec { 'killmenow':
  command => 'pkill -f killmenow',
  onlyif  => 'pgrep -f killmenow',
  path    => '/usr/bin:/bin',
}
```

**How to Apply:**

```bash
$ puppet-lint 2-execute_a_command.pp
$ puppet apply 2-execute_a_command.pp
```
