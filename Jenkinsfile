pipeline {
    agent any
    tools {
    terraform 'terraform'
}

    stages {
        stage('Hello') {
            steps {
                echo 'Hello World'
            }
        }
        
        stage('Git Checkout') {
            steps {
               git branch: 'main', credentialsId: 'nikhil-github', url: 'https://github.com/nikhilpatne/azure-terraform-jenkins.git'
            }
        }
        
        
        stage('Terraform init') {
            steps {
              sh 'terraform init'
            }
        }
        
            stage('Terraform apply') {
              

            steps {
                
                    withCredentials([azureServicePrincipal(
                    credentialsId: 'nikhil-azure',
                    subscriptionIdVariable: 'ARM_SUBSCRIPTION_ID',
                    clientIdVariable: 'ARM_CLIENT_ID',
                    clientSecretVariable: 'ARM_CLIENT_SECRET',
                    tenantIdVariable: 'ARM_TENANT_ID'
                )]) {

                        sh """
                        echo "Applying the plan"
                        terraform apply -auto-approve -var "client_id=$ARM_CLIENT_ID" -var "client_secret=$ARM_CLIENT_SECRET" -var "subscription_id=$ARM_SUBSCRIPTION_ID" -var "tenant_id=$ARM_TENANT_ID"
                        """
                                }
                }
                
        }
    }
}
