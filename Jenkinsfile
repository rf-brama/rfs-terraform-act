pipeline {
    agent any

    stages {
        stage('Plan') {
            steps {
                script {
                    currentBuild.displayName = params.version
                }
                sh '/usr/local/bin/terraform init -input=false'
                // sh '/usr/local/bin/terraform init -reconfigure -input=false'//This command is for reconfiguring state
                sh '/usr/local/bin/terraform plan -input=false -out tfplan'             
            }
        }
                stage('apply') {
            steps {
                script {
                    currentBuild.displayName = params.version
                }
                sh '/usr/local/bin/terraform apply -input=false tfplan'              
            }
        }
                        stage('destroy') {
            steps {
                script {
                    currentBuild.displayName = params.version
                }
                sh '/usr/local/bin/terraform destroy -auto-approve'              
            }
        }
    }
}