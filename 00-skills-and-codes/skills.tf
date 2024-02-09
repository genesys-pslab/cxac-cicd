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

