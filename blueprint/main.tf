terraform {
  required_version = ">= 1.0.0"
  required_providers {
    genesyscloud = {
      source  = "mypurecloud/genesyscloud",
      version = ">= 1.6.0"
    }
  }
}

provider "genesyscloud" {
  oauthclient_id = "ae495f05-b966-48aa-a20a-594741c0efff"
  oauthclient_secret = "kWG6NhrdSxbI0oyXUX-ImPU2IWemH30sbx84JpWOVSE"
  aws_region = "eu-west-2"
}


resource "genesyscloud_tf_export" "export" {
  directory          = "./genesyscloud"
  export_as_hcl      = true
  resource_types     = ["genesyscloud_user"]
  include_state_file = true
}
