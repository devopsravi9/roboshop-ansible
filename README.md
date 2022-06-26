# roboshop-ansible

ansible-playbook -i inv.roboshop roboshop.yml -u centos -e ansible_password=DevOps321 -e HOST=FRONTEND -e ROLE=frontend

ansible-playbook -i inv.roboshop roboshop.yml -u centos -e ansible_password=DevOps321 -e HOST=MONGODB -e ROLE=mongodb

ansible-playbook -i inv.roboshop roboshop.yml -u centos -e ansible_password=DevOps321 -e HOST=CATALOGUE -e ROLE=catalogue

ansible-playbook -i inv.roboshop roboshop.yml -u centos -e ansible_password=DevOps321 -e HOST=REDIS -e ROLE=redis

ansible-playbook -i inv.roboshop roboshop.yml -u centos -e ansible_password=DevOps321 -e HOST=USER -e ROLE=user

ansible-playbook -i inv.roboshop roboshop.yml -u centos -e ansible_password=DevOps321 -e HOST=CART -e ROLE=cart
