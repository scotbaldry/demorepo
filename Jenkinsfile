#!/usr/bin/env groovy

pipeline {
    agent any

    tools {
        maven 'Maven 3.5.0'
        jdk 'JDK 1.8'
    }

    stages {
        stage('Checkout') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[credentialsId: 'fda0a242-811d-4c9b-9eee-28a6f0a05c1e', url: 'https://github.com/scotbaldry/demorepo']]])
            }
        }
        stage('Compile'){
            steps {
                bat 'mvn -Dmaven.test.failure.ignore=true test'
            }
            post {
                success {
                    junit '**/target/surefire-reports/**/*.xml'
                }
            }
        }
        stage('Integration Test') {
            steps {
                echo 'Integration Test'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploy'
            }
        }
    }
}