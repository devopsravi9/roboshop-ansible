echo -e "\e[31m---------------------- DEPLOYING CODE INTO FRONTEND------------------------------------\e[0m\n"
ansible-playbook -i inv.roboshop roboshop.yml -u centos -e ansible_password=DevOps321 -e HOST=FRONTEND -e ROLE=frontend
echo -e "\e[32m---------------------- CODE DEPLOYED INTO FRONTEND------------------------------------\e[0m\n"

echo -e "\e[31m---------------------- DEPLOYING CODE INTO MONGODB------------------------------------\e[0m\n"
ansible-playbook -i inv.roboshop roboshop.yml -u centos -e ansible_password=DevOps321 -e HOST=MONGODB -e ROLE=mongodb
echo -e "\e[32m---------------------- CODE DEPLOYED INTO MONGODB------------------------------------\e[0m\n"

echo -e "\e[31m---------------------- DEPLOYING CODE INTO CATALOGUE------------------------------------\e[0m\n"
ansible-playbook -i inv.roboshop roboshop.yml -u centos -e ansible_password=DevOps321 -e HOST=CATALOGUE -e ROLE=catalogue
echo -e "\e[32m---------------------- CODE DEPLOYED INTO CATALOGUE------------------------------------\e[0m\n"

echo -e "\e[31m---------------------- DEPLOYING CODE INTO REDIS ------------------------------------\n"
ansible-playbook -i inv.roboshop roboshop.yml -u centos -e ansible_password=DevOps321 -e HOST=REDIS -e ROLE=redis
echo -e "\e[32m---------------------- CODE DEPLOYED INTO REDIS ------------------------------------\e[0m\n"

echo -e "\e[31m---------------------- DEPLOYING CODE INTO USER------------------------------------\e[0m\n"
ansible-playbook -i inv.roboshop roboshop.yml -u centos -e ansible_password=DevOps321 -e HOST=USER -e ROLE=user
echo -e "\e[32m---------------------- CODE DEPLOYED INTO USER------------------------------------\e[0m\n"

echo -e "\e[31m---------------------- DEPLOYING CODE INTO CART------------------------------------\e[0m\n"
ansible-playbook -i inv.roboshop roboshop.yml -u centos -e ansible_password=DevOps321 -e HOST=CART -e ROLE=cart
echo -e "\e[32m---------------------- CODE DEPLOYED INTO CART------------------------------------\e[0m\n"

ansible-playbook -i inv.roboshop roboshop.yml -u centos -e ansible_password=DevOps321 -e HOST=DISPATCH -e ROLE=dispatch