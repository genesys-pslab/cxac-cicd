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

