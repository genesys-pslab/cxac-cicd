cd ./30-platform-api-cli
rm 99-export_archy_flows.sh
cd ../25-archy
rm -rf exports
cd ../20-existing-environments
rm -rf gcexport .terraform .terraform.lock.hcl terraform.tfstate*
cd ../15-import
terraform destroy --auto-approve
rm -rf .terraform .terraform.lock.hcl terraform.tfstate*
cd ../10-export
terraform destroy --auto-approve
rm -rf gcexport .terraform .terraform.lock.hcl terraform.tfstate*
cd ../05-queues
terraform destroy --auto-approve
rm -rf .terraform .terraform.lock.hcl terraform.tfstate*
cd ../00-skills-and-codes
terraform destroy --auto-approve
rm -rf .terraform .terraform.lock.hcl terraform.tfstate*