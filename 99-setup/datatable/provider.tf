terraform {
    required_providers {
        genesyscloud = {
            source = "mypurecloud/genesyscloud"
            version = ">=1.36.1"
        }
    }
}

provider "genesyscloud" {
  oauthclient_id = "${var.SOURCE_CLIENTID}"
  oauthclient_secret = "${var.SOURCE_CLIENTSECRET}"
  aws_region = "${var.SOURCE_AWSREGION}"
  sdk_debug = false
}