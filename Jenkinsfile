pipeline {
    agent none
    stages {
        stage('Build') {
            agent {
                docker {
                    label 'docker'
                    image 'klakegg/hugo:0.55.3'
                }
            }
            when {
                branch 'source'
            }
            steps {
                sh "hugo"
                stash(name: 'public', includes: 'public/**')
            }
        }
        stage('Deploy') {
            agent { 
                docker {
                    label 'docker'
                    image 'fint/git:latest'
                }
            }
            environment {
                GITHUB = credentials('github_fint_jenkins')
            }
            when {
                branch 'source'
            }
            steps {
                dir('public') {
                    git branch: 'master', credentialsId: 'github_fint_jenkins', url: 'https://github.com/FINTLabs/fintlabs.github.io'
                }
                unstash 'public'
                dir('public') {
                    sh "git add ."
                    sh 'git config user.email "jenkins@fintlabs.no"'
                    sh 'git config user.name "FINT Jenkins"'
                    sh "git commit -m '${BUILD_ID}'"
                    sh "git push https://${GITHUB}@github.com/FINTLabs/fintlabs.github.io.git master:master"
                }
            }
        }
    }
}
