cd $PROJECT_ROOT
source ./bin/set_tf_alias
source ./bin/install_terraform_cli
source ./bin/install_aws_cli
source ./bin/generate_tfrc_credentials
# cp $PROJECT_ROOT/terraform.tfvars.example $PROJECT_ROOT/terraform.tfvars
source ~/.bash_profile
source ./bin/build_provider
