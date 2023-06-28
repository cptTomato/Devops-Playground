Part 1:
Create a VM on Digitalocean with Terraform
  
Docs: https://www.digitalocean.com/community/tutorials/how-to-use-terraform-with-digitalocean

Todo: 
Create Digitalocean api access token. (Digitalocean webapp)
Export the Token: export DO_PAT="your_personal_access_token"
Switch to Terraform folder
Initialize Terraform: terraform init
Check Plan: 
terraform plan \
  -var "do_token=${DO_PAT}" \
  -var "pvt_key=$HOME/.ssh/id_rsa"
Apply changes and create vm
  terraform apply \
  -var "do_token=${DO_PAT}" \
  -var "pvt_key=$HOME/.ssh/id_rsa"

(i) If you have a ssh-key passphrase, terraform will not be apple to login into node and performe stuff
If this is finished, you can login into your node. (No Password needed)



Part 2:
Ansible for the new Node: 

Docs: https://spacelift.io/blog/ansible-tutorial



Switch to Ansible folder and change the IP adress with the ip of your new server in the inventory file. 
Run: 
ansible-playbook -i hosts updates.yaml

