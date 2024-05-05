# Create Skills
resource "genesyscloud_routing_skill" "skilllob1" {
  name = "${var.CUST_PREFIX}${var.LOB1}"
}
resource "genesyscloud_routing_skill" "skilllob2" {
  name = "${var.CUST_PREFIX}${var.LOB2}"
}
resource "genesyscloud_routing_skill" "skilllob3" {
  name = "${var.CUST_PREFIX}${var.LOB3}"
}

# Create Wrapup Codes
resource "genesyscloud_routing_wrapupcode" "wuclob1" {
    name = "${var.CUST_PREFIX}${var.LOB1}"
}
resource "genesyscloud_routing_wrapupcode" "wuclob2" {
    name = "${var.CUST_PREFIX}${var.LOB2}"
}
resource "genesyscloud_routing_wrapupcode" "wuclob3" {
    name = "${var.CUST_PREFIX}${var.LOB3}"
}

# DEMO: Show how re-running the script with additional
# or changed configuration will evaluate the existing
# resources through the terraform.tfstate file
# Uncomment below lines and run again
resource "genesyscloud_routing_skill" "skilllob0" {
  name = "${var.CUST_PREFIX}${var.LOB0}"
}
resource "genesyscloud_routing_wrapupcode" "wuclob0" {
    name = "${var.CUST_PREFIX}${var.LOB0}"
}

