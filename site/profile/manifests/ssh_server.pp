class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDLcc8JUq9I6VKgmLZSxm8+7niIJp/9Xi64386ZY4/0Y7wWWq7UqiWXAtVE+2GGhaM77cARFEvC94zhzIdIliTvYS716y4eEZrvsT0PmT1r6fsqISb6uuD3sU6N562Bx4XCK95PFEgetyAbFf5aVd75mSrIzAcqO5r6sPk9WqNA0fAuaD8JAx0LGdes295azLhLahem2JyRsWu7WWRkpicxnQrPYV+uULYnIzO2eKGCpnMLfiktP2h5MKrD+WYXkR6oVKGSpztcrBDE/sJgUxmTCa+jq0vEPmB+pyQEd4KGCcvvEqRmZArenVs6zBueMDloFQMGAibL5/Upvj6Hh97b',
	}  
}
