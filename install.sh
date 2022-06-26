echo -e "---------------------- DEPLOYING CODE INTO FRONTEND------------------------------------\n"
ansible-playbook -i inv.roboshop roboshop.yml -u centos -e ansible_password=DevOps321 -e HOST=FRONTEND -e ROLE=frontend
echo -e "---------------------- CODE DEPLOYED INTO FRONTEND------------------------------------"

echo -e "---------------------- DEPLOYING CODE INTO FRONTEND------------------------------------"
ansible-playbook -i inv.roboshop roboshop.yml -u centos -e ansible_password=DevOps321 -e HOST=MONGODB -e ROLE=mongodb
echo -e "---------------------- CODE DEPLOYED INTO FRONTEND------------------------------------\n"

echo -e "---------------------- DEPLOYING CODE INTO FRONTEND------------------------------------\n"
#ansible-playbook -i inv.roboshop roboshop.yml -u centos -e ansible_password=DevOps321 -e HOST=CATALOGUE -e ROLE=catalogue
echo -e "---------------------- CODE DEPLOYED INTO FRONTEND------------------------------------\n"

echo -e "---------------------- DEPLOYING CODE INTO FRONTEND------------------------------------\n"
#ansible-playbook -i inv.roboshop roboshop.yml -u centos -e ansible_password=DevOps321 -e HOST=REDIS -e ROLE=redis
echo -e "---------------------- CODE DEPLOYED INTO FRONTEND------------------------------------\n"

echo -e "---------------------- DEPLOYING CODE INTO FRONTEND------------------------------------\n"
#ansible-playbook -i inv.roboshop roboshop.yml -u centos -e ansible_password=DevOps321 -e HOST=USER -e ROLE=user
echo -e "---------------------- CODE DEPLOYED INTO FRONTEND------------------------------------\n"

echo -e "---------------------- DEPLOYING CODE INTO FRONTEND------------------------------------\n"
#ansible-playbook -i inv.roboshop roboshop.yml -u centos -e ansible_password=DevOps321 -e HOST=CART -e ROLE=cart
echo -e "---------------------- CODE DEPLOYED INTO FRONTEND------------------------------------\n"