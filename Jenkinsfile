pipeline {

    agent any

    environment {
        PATH = "/usr/local/lib/ruby/gems/2.7.0/bin:/usr/local/opt/ruby/bin:$PATH"
    }

    stages {
        stage('Test') {
            steps {
                echo 'Testing...'
                echo "PATH is: $PATH"
                sh 'RUN_ON_BSTACK=true BROWSERSTACK_USERNAME=alangrubb1 BROWSERSTACK_ACCESS_KEY=mqyCphmri491xmxqBxq3 bundle exec cucumber'
            }
        }
    }
}
