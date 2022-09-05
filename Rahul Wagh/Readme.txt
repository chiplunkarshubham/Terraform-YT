ec2 user :
count number, ami string, tags map, enable public access bool, user list
security grp map
s3 bucket + json
tfvars: test and prod

terraform init
terraform validate
terraform fmt
terraform refresh
terraform plan -out=Filename
terraform apply -auto-approve

terraform plan -var-file="stage.tfvars" or -var-file="config/stage.tfvars"
terraform apply -var-file="stage.tfvars"

Setting variable using command line
terraform plan -var="instance_type=t2.micro"

if you want to use a var with a string then use $(var.nameofthevariable) or $(local.localvariablename)
upper function in terraform
count.index
for_each needs set or map
[for name in var.variablename : name] mostly used for output

kuch dena nahi h toh null

terraform provisioners :
  file
  remote-exec
  local-exec

code commit :hosts private git repo
code build executes the commands in BuildSpec.yml

terraform suggests us to use the concept of remote backend(s3 bucket, Terraform cloud, Azure blob, hashicorp consul)
where data is encrypted at rest for terraform.tfstate file.
As it contains all confidential/sensitive info(resource id, username password for databases) of your infra
state file is a one to one mapping with actual state and desired state.
use an enterprise grade state management system like terraform cloud which provides tls encryption during data transfer.
there is encryption in transit(https) and at rest when state file is pushed from local system to state management system.
it should not be stored in VCS version control system, mention it in your git ignore or terraform ignore



Workspace: branches
workspaces don't duplicate the entire setup.
eg if you have 3 workspaces the backend remains same only you get 3 state files.(backend and remote backend are different)
complete isolation is not offered
terraform workspace list
* means active Workspace

terraform workspace new dev

terraform workspace show --> shows active Workspace

terraform workspace select test (for multiple workspace)


dev qa uat prod

terraform workspace in open source version (oss) vs in terraform cloud version

terraform taint resource_id : "terraform" will delete and create it again.
