resource "genesyscloud_routing_queue" "ARA_MessageQueue" {
  suppress_in_queue_call_recording = true
  name                             = "ARA_MessageQueue"
  scoring_method                   = "TimestampAndPriority"
  skill_evaluation_method          = "ALL"
  acw_wrapup_prompt                = "OPTIONAL"
  enable_transcription             = false
  auto_answer_only                 = false
  enable_manual_assignment         = false
}

resource "genesyscloud_routing_queue" "GSYS_Q_Default" {
  agent_owned_routing {
    enable_agent_owned_callbacks   = false
    max_owned_callback_delay_hours = 720
    max_owned_callback_hours       = 1
  }
  name                             = "GSYS_Q_Default"
  wrapup_codes                     = ["${genesyscloud_routing_wrapupcode.GSYS_New_Clients.id}", "${genesyscloud_routing_wrapupcode.GSYS_Payments.id}", "${genesyscloud_routing_wrapupcode.GSYS_Support.id}"]
  skill_evaluation_method          = "ALL"
  acw_timeout_ms                   = 60000
  suppress_in_queue_call_recording = true
  acw_wrapup_prompt                = "MANDATORY_TIMEOUT"
  enable_transcription             = false
  enable_manual_assignment         = false
  scoring_method                   = "TimestampAndPriority"
  auto_answer_only                 = true
}

resource "genesyscloud_routing_queue" "DS_TestQueue" {
  skill_evaluation_method          = "ALL"
  acw_wrapup_prompt                = "OPTIONAL"
  scoring_method                   = "TimestampAndPriority"
  enable_transcription             = false
  enable_manual_assignment         = false
  suppress_in_queue_call_recording = true
  auto_answer_only                 = false
  name                             = "DS_TestQueue"
}

resource "genesyscloud_routing_queue" "GSYS_Q_New_Clients" {
  suppress_in_queue_call_recording = true
  agent_owned_routing {
    enable_agent_owned_callbacks   = false
    max_owned_callback_delay_hours = 720
    max_owned_callback_hours       = 1
  }
  scoring_method           = "TimestampAndPriority"
  acw_timeout_ms           = 30000
  enable_manual_assignment = false
  acw_wrapup_prompt        = "MANDATORY_TIMEOUT"
  wrapup_codes             = ["${genesyscloud_routing_wrapupcode.GSYS_New_Clients.id}", "${genesyscloud_routing_wrapupcode.GSYS_Payments.id}", "${genesyscloud_routing_wrapupcode.GSYS_Support.id}"]
  enable_transcription     = false
  name                     = "GSYS_Q_New_Clients"
  skill_evaluation_method  = "ALL"
  auto_answer_only         = true
}

resource "genesyscloud_routing_queue" "GSYS_Q_Payments" {
  suppress_in_queue_call_recording = true
  acw_timeout_ms                   = 30000
  auto_answer_only                 = true
  wrapup_codes                     = ["${genesyscloud_routing_wrapupcode.GSYS_New_Clients.id}", "${genesyscloud_routing_wrapupcode.GSYS_Payments.id}", "${genesyscloud_routing_wrapupcode.GSYS_Support.id}"]
  enable_manual_assignment         = false
  skill_evaluation_method          = "ALL"
  name                             = "GSYS_Q_Payments"
  acw_wrapup_prompt                = "MANDATORY_TIMEOUT"
  scoring_method                   = "TimestampAndPriority"
  agent_owned_routing {
    enable_agent_owned_callbacks   = false
    max_owned_callback_delay_hours = 720
    max_owned_callback_hours       = 1
  }
  enable_transcription = false
}

resource "genesyscloud_routing_queue" "GSYS_Q_Support" {
  agent_owned_routing {
    max_owned_callback_hours       = 1
    enable_agent_owned_callbacks   = false
    max_owned_callback_delay_hours = 720
  }
  enable_transcription             = false
  name                             = "GSYS_Q_Support"
  skill_evaluation_method          = "ALL"
  acw_timeout_ms                   = 30000
  wrapup_codes                     = ["${genesyscloud_routing_wrapupcode.GSYS_New_Clients.id}", "${genesyscloud_routing_wrapupcode.GSYS_Payments.id}", "${genesyscloud_routing_wrapupcode.GSYS_Support.id}"]
  auto_answer_only                 = true
  acw_wrapup_prompt                = "MANDATORY_TIMEOUT"
  suppress_in_queue_call_recording = true
  scoring_method                   = "TimestampAndPriority"
  enable_manual_assignment         = false
}

