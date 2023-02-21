terraform {
  source = "${get_path_to_repo_root()}/src/modules/ec2"
}
inputs = {
  instance_type = "t2.micro"
  instance_name = "example-server-dev"
}
# Automatically find the root terragrunt.hcl and inherit its
# configuration
include {
  path = find_in_parent_folders()
}