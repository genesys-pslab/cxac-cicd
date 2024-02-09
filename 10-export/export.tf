resource "genesyscloud_tf_export" "export" {
    directory       = "./export-data"
    include_state_file = false
    export_as_hcl = true
    log_permission_errors = true
    split_files_by_resource = true
    include_filter_resources = [
        "genesyscloud_routing_skill::${var.CUST_PREFIX}${var.LOB1}",
        "genesyscloud_routing_skill::${var.CUST_PREFIX}${var.LOB2}",
        "genesyscloud_routing_skill::${var.CUST_PREFIX}${var.LOB3}",
        "genesyscloud_routing_wrapupcode::${var.CUST_PREFIX}${var.LOB1}",
        "genesyscloud_routing_wrapupcode::${var.CUST_PREFIX}${var.LOB2}",
        "genesyscloud_routing_wrapupcode::${var.CUST_PREFIX}${var.LOB3}",
        "genesyscloud_routing_queue::${var.CUST_PREFIX}Q_Default",
        "genesyscloud_routing_queue::${var.CUST_PREFIX}Q_Support",
        "genesyscloud_routing_queue::${var.CUST_PREFIX}Q_Payments",
        "genesyscloud_routing_queue::${var.CUST_PREFIX}Q_New_Clients"
    ]
}