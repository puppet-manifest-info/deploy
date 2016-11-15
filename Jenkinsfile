node ('puppet-master'){
   
   timestamps {

      stage('Updating deploy puppet-modules') {
      
            checkout scm
         
            sh 'echo jenkins | sudo -S cp -rf templates /etc/puppet/modules/deploy/'
      
            sh 'echo jenkins | sudo -S cp -rf manifests /etc/puppet/modules/deploy/ && echo jenkins | sudo -S chown -R root:root /etc/puppet/modules/deploy'
      
            step([$class: 'WsCleanup'])
        
      }
   
   }

}
