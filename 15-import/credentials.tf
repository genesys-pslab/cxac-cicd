terraform {
    required_providers {
        genesyscloud = {
            source = "mypurecloud/genesyscloud"
            version = ">=1.25.0"
        }
    }
}

provider "genesyscloud" {
  oauthclient_id = "${var.DEST_CLIENTID}"
  oauthclient_secret = "${var.DEST_CLIENTSECRET}"
  aws_region = "${var.DEST_AWSREGION}"
  sdk_debug = false
}