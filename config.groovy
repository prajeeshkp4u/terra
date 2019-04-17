#!groovy
node {
  stage ('Checkout') {
    checkout scm
  }

  stage ('Terraform Plan') {
    sh 'terraform plan -no-color -out=create.tfplan'
  }

  // Optional wait for approval
  input 'Deploy stack?'

  stage ('Terraform Apply') {
    sh 'terraform apply -no-color create.tfplan'
  }
 }
