locals {
    queues = csvdecode(file("${path.module}/queues.csv"))
}

data "genesyscloud_routing_wrapupcode" "wuclob1" {
  name = "${var.CUST_PREFIX}${var.LOB1}"
}
data "genesyscloud_routing_wrapupcode" "wuclob2" {
  name = "${var.CUST_PREFIX}${var.LOB2}"
}
data "genesyscloud_routing_wrapupcode" "wuclob3" {
  name = "${var.CUST_PREFIX}${var.LOB3}"
}

resource "genesyscloud_routing_queue" "queues" {

    count = length(local.queues)

    name                = format("%s%s",var.CUST_PREFIX,local.queues[count.index].name)
    description         = local.queues[count.index].description
    acw_wrapup_prompt   = local.queues[count.index].acw_wrapup_prompt 
    acw_timeout_ms      = local.queues[count.index].acw_timeout_ms
    wrapup_codes = [
      "${data.genesyscloud_routing_wrapupcode.wuclob1.id}",
      "${data.genesyscloud_routing_wrapupcode.wuclob2.id}",
      "${data.genesyscloud_routing_wrapupcode.wuclob3.id}" 
    ]
} 

