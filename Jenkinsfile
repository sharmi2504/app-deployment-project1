pipeline {
  agent any

  stages {
    stage('Build') {
      steps {
        sh build.sh'
      }
    }
    stage('Deploy') {
      steps {
          sh 'deploy.sh'
         

        }
      }
    }
    
  }
Post {
always { // Clean up cleanWs() 
} 
if{
echo 'dev repo!' 
} 
else
 { 
echo 'prod repo'
}
