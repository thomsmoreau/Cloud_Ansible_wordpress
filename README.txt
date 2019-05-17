Terraform----------------------------------------------------------------------------------
- To set UP terraform, modifie the "var.tfvar" by adding your Token and organisation_id 
  instead of the "x" allready written.

Packer-------------------------------------------------------------------------------------
Packer file is "scaleway-cloud-courses-template.json" :
- In the .bashrc file write (at the en of the file) : 
	- Use: #sudo nano .bashrc then:
		- SCW_TOKEN=<your_token> and export 
		- SCALEWAY_ORGANIZATION=<your_organization_id>
- Update the system .bashrc with command:
	- #source .bashrc

Ansible--------------------------------------------------------------------------------------
- Modifie "hosts" file by putting your server's public_ip.
- The ansible playbook is "playbook.yml" in wordpress-ansible folder:
	- In this folder, execute: #ansible-playbook playbook.yml -i hosts -u root -K
	- Will execute changes to your server:
		- Creation of all the content and database to run a wordpress website.
