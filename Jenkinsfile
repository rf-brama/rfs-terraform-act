pipeline {
    agent any

    stages {
        stage('Plan') {
            steps {
                script {
                    currentBuild.displayName = params.version
                }
                sh '/usr/local/bin/terraform init -input=false'
                sh '/usr/local/bin/terraform plan -input=false -out tfplan'
                sh '/usr/local/bin/terraform show -input=false -out tfplan'              
            }
        }
    }
}