class deploy {

        file { "deploy.sh":
                ensure => file,
                owner => 'jenkins',
                group => 'jenkins',
                mode => '0755',
                path => '/var/lib/jenkins/app/deploy.sh',
                content => template('/etc/puppet/modules/deploy/templates/deploy.sh.erb')
        }
}
