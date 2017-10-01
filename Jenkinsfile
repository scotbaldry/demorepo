#!/usr/bin/env groovy

pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[credentialsId: 'fda0a242-811d-4c9b-9eee-28a6f0a05c1e', url: 'https://github.com/scotbaldry/demorepo']]])
            }
        }
        stage('Unit Test'){
            steps {
                junit 'reports/**/*.xml'
            }
        }
        stage('Integration Test') {
            steps {
            }
        }
        stage('Deploy') {
            steps {
            }
        }
    }
}