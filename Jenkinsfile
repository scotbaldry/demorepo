#!/usr/bin/env groovy

pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
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