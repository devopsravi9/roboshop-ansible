pipeline {
  agent {
    label 'workstation'
    }

  environment {
    SSH = credentials('SSH')
    }

  parameters {
    choice(name: 'COMPONENT', choices: ['frontend', 'cart', 'catalogue'], description: 'which componet to run')
    }
  stages {
    stage ('launch app') {
      steps {
        sh '''
          cd ansible
          ansible-playbook -i inv.robo robo.yml -e ansible_user=${SSH_USR} -e ansible_password=${SSH_PSW} -e ROLE=${COMPONENT}  -e HOST=$( echo ${COMPONENT} | tr [:lower:] [:upper:])
        '''
        }
      }
    }

  }