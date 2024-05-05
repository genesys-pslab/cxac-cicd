resource "genesyscloud_routing_queue" "DNB_Q_Default" {
  name                             = "DNB_Q_Default"
  suppress_in_queue_call_recording = true
  acw_timeout_ms                   = 60000
  auto_answer_only                 = true
  wrapup_codes                     = ["${genesyscloud_routing_wrapupcode.DNB_New_Clients.id}", "${genesyscloud_routing_wrapupcode.DNB_Support.id}", "${genesyscloud_routing_wrapupcode.DNB_Payments.id}"]
  skill_evaluation_method          = "ALL"
  agent_owned_routing {
    max_owned_callback_hours       = 1
    enable_agent_owned_callbacks   = false
    max_owned_callback_delay_hours = 720
  }
  enable_transcription     = false
  scoring_method           = "TimestampAndPriority"
  acw_wrapup_prompt        = "MANDATORY_TIMEOUT"
  enable_manual_assignment = false
}

resource "genesyscloud_routing_queue" "DNB_Q_New_Clients" {
  wrapup_codes                     = ["${genesyscloud_routing_wrapupcode.DNB_New_Clients.id}", "${genesyscloud_routing_wrapupcode.DNB_Support.id}", "${genesyscloud_routing_wrapupcode.DNB_Payments.id}"]
  name                             = "DNB_Q_New_Clients"
  suppress_in_queue_call_recording = true
  auto_answer_only                 = true
  scoring_method                   = "TimestampAndPriority"
  skill_evaluation_method          = "ALL"
  agent_owned_routing {
    enable_agent_owned_callbacks   = false
    max_owned_callback_delay_hours = 720
    max_owned_callback_hours       = 1
  }
  enable_transcription     = false
  acw_timeout_ms           = 30000
  acw_wrapup_prompt        = "MANDATORY_TIMEOUT"
  enable_manual_assignment = false
}

resource "genesyscloud_routing_queue" "DNB_Q_Support" {
  agent_owned_routing {
    max_owned_callback_hours       = 1
    enable_agent_owned_callbacks   = false
    max_owned_callback_delay_hours = 720
  }
  enable_manual_assignment         = false
  skill_evaluation_method          = "ALL"
  acw_timeout_ms                   = 30000
  scoring_method                   = "TimestampAndPriority"
  auto_answer_only                 = true
  wrapup_codes                     = ["${genesyscloud_routing_wrapupcode.DNB_New_Clients.id}", "${genesyscloud_routing_wrapupcode.DNB_Support.id}", "${genesyscloud_routing_wrapupcode.DNB_Payments.id}"]
  acw_wrapup_prompt                = "MANDATORY_TIMEOUT"
  name                             = "DNB_Q_Support"
  enable_transcription             = false
  suppress_in_queue_call_recording = true
}

resource "genesyscloud_routing_queue" "DNB_Q_Payments" {
  acw_wrapup_prompt    = "MANDATORY_TIMEOUT"
  acw_timeout_ms       = 30000
  enable_transcription = false
  auto_answer_only     = true
  scoring_method       = "TimestampAndPriority"
  agent_owned_routing {
    max_owned_callback_hours       = 1
    enable_agent_owned_callbacks   = false
    max_owned_callback_delay_hours = 720
  }
  name                             = "DNB_Q_Payments"
  skill_evaluation_method          = "ALL"
  wrapup_codes                     = ["${genesyscloud_routing_wrapupcode.DNB_New_Clients.id}", "${genesyscloud_routing_wrapupcode.DNB_Support.id}", "${genesyscloud_routing_wrapupcode.DNB_Payments.id}"]
  enable_manual_assignment         = false
  suppress_in_queue_call_recording = true
}

