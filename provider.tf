provider "aws" {
  shared_config_files      = ["./.aws/config"]
  shared_credentials_files = ["./.aws/cred"]
  profile                  = "admin_esraa"
  region                   = "us-east-2" 
}