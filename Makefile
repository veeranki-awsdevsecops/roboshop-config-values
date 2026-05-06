vault-config:
	git pull
	rm -rf .terraform/terraform.tfstate
	terraform init
	terraform apply -auto-approve -var token=${token}
