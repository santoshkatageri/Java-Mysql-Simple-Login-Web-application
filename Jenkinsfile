pipeline {
    agent any
        environment {
        dockerimage = "mavenapp"
        dockercontainer = "maven"
    }
    parameters {
        string(name: 'PORT', defaultValue: '', description: 'Port number')
    }
    stages {
      stage('Git Clone') {
        steps{
          git url:'https://github.com/mihai23bogdan/Java-Mysql-Simple-Login-Web-application', branch: 'master'
        }
    }    
      stage ('compile') {
          steps {
              sh "mvn compile"
          }
      }
     stage ('packaging') {
          steps {
              sh "mvn package"
          }
      }
     stage ('build') {
           steps {
            sh "docker build -t ${dockerimage}:${BUILD_NUMBER} ."
           }
        } 
     stage ('run') {
           steps { 
               sh "docker run -d -p ${params.PORT}:8080 --name ${dockercontainer}${BUILD_NUMBER} ${dockerimage}:${BUILD_NUMBER}"
           }
        }   
    }
}    
    
