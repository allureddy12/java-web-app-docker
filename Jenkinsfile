pipeline {
    agent any
     tools{
        maven 'maven'
     }
    stages {
        stage('checkout ') {
            steps {
               git branch: 'master', url: 'https://github.com/alluredduhcl/java-web-app-docker.git'
            }
        }
        stage ('build the code'){
            steps {
             sh "mvn clean package"
            }
        }
        stage ('build the docker image'){
            steps {
              sh "docker build -t allureddy/new ."
            }
        }
        stage ('push the docker image'){
            steps {
              sh "docker login -u allureddy -p Ashok@4512"
              sh "docker push allureddy/new"
            }
        }
        stage ('deply to the K8S'){
            steps {
             kubernetesDeploy(
         configs: 'deployment.yml', 
         kubeconfigId: 'kubernetes',
         enableConfigSubstitution: true
        )
            }
        }
    }
}

