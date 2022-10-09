pipeline { 
    agent {
        label "pi"
    } 
    options {
        ansiColor('xterm')
    }
    stages {
        stage('Build'){
            steps {
                // catchError(buildResult: 'SUCCESS', stageResult: 'FAILURE'){
                    sh '''
                        git clone https://github.com/VolodymyrPasternak/BestShop
                        cd BestShop
                        copy ../Dockerfile ./
                        docker build -t staticSite:0.1 .
                    '''
                // }
            }
        }
        stage('Testing'){
            steps {
                sh '''
                    echo "Testing Stage"
                '''
            }
        }
        stage('Deploy') {
            steps {
                sh 'echo "deploy with GitOps"'
            }
        }
    }
    post {
        // Clean after build
        always {
            cleanWs(cleanWhenNotBuilt: true,
                    deleteDirs: true,
                    disableDeferredWipeout: true,
                    notFailBuild: true,
                    cleanWhenFailure: true,
                    cleanWhenSuccess: true)
        }
    }
}