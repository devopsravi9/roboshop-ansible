ansible-playbook -i inv.roboshop roboshop.yml -u centos -e ansible_password=DevOps321 -e HOST=FRONTEND -e ROLE=frontend

ansible-playbook -i inv.roboshop roboshop.yml -u centos -e ansible_password=DevOps321 -e HOST=MONGODB -e ROLE=mongodb
