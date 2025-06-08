@Library('jenkins-global-pipeline-lib-1.1') _

InfraWorkflow(
    accountName: "petshop",
    awsRegion: "us-west-2",
    canonicalName: "petshop-",
    key: "app",
    deploy_network_stack: "true",
    deploy_application_stack: "true",
    deploy_application: "true",
    deploy_grrepo: "false",
    deploy_grstats: "false",
    deploy_jobserver: "false",
    deploy_license: "false",
    deploy_grweb: "false",
    deploy_dwh: "false",
    certificate_arn: "",
    is_destroy: "false",
    is_dr: "false",
    dr_rds_writer: "",
    dr_rds_reader: "",
    dr_rds_password: ""
)

pipeline {
    agent any
    
    environment {
        AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
        TF_IN_AUTOMATION      = '1'
        TERRAFORM_VERSION     = '1.0.0'
    }
    
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        
        stage('Terraform Init') {
            steps {
                script {
                    sh """
                        terraform init
                    """
                }
            }
        }
        
        stage('Terraform Plan') {
            steps {
                script {
                    sh """
                        terraform plan -out=tfplan
                    """
                }
            }
        }
        
        stage('Approval') {
            when {
                branch 'main'
            }
            steps {
                input message: 'Do you want to apply this plan?'
            }
        }
        
        stage('Terraform Apply') {
            when {
                branch 'main'
            }
            steps {
                script {
                    sh """
                        terraform apply -auto-approve tfplan
                    """
                }
            }
        }
    }
    
    post {
        always {
            cleanWs()
        }
        success {
            echo 'Pipeline completed successfully!'
        }
        failure {
            echo 'Pipeline failed!'
        }
    }
} 